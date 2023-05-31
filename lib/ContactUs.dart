import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:monkez/NearestBuilding.dart';
import 'package:monkez/ServiceNeeds.dart';
import 'package:monkez/SetUpProfile3.dart';
import 'package:monkez/UserProfile.dart';
import 'package:monkez/WelcomePage.dart';
import 'package:monkez/guidance.dart';
import 'package:monkez/home.dart';
import 'package:monkez/travelScan.dart';
import '../Constants/Dimensions.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ContactUS extends StatefulWidget {
  const ContactUS({Key? key}) : super(key: key);

  @override
  State<ContactUS> createState() => _ContactUSState();
}

class _ContactUSState extends State<ContactUS> {

  // late final double rating;
  // late final double size;
  // int? ratingCount;
  // RatingBar({required this.rating, this.ratingCount, this.size=18});
  RegExp _phoneRegex = RegExp(r'^\d{11}$');
  String? _errorMessage;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();
  double _initialRating = 0.0;
  void _submitFeedback() async {
    if (_formKey.currentState!.validate()) {
      // Show rating popup
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Rate us'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('How would you rate our app?'),
              SizedBox(height: 16),
              RatingBar.builder(
                initialRating: _initialRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  _initialRating = rating;
                },
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () async {
                // Save feedback to Firestore
                await FirebaseFirestore.instance.collection('users').add({
                  'name': _nameController.text,
                  'email': _emailController.text,
                  'phone': _phoneController.text,
                  'message': _messageController.text,
                  'rating': _initialRating,
                });

                Navigator.pop(context); // Close rating popup
                // Close feedback screen
                _messageController.clear();
                _nameController.clear();
                _emailController.clear();
                _phoneController.clear();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(),
      appBar: new AppBar(
        backgroundColor:   Color(0xFF00CDD0),
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
            size: MyDim.fontSizebetween,
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child:Image(
                image: ResizeImage(
                    AssetImage('Assets/images/blackLogo.png'),
                    width: 1000,
                    height: 800),),
              // child: Text('Monkez',style: TextStyle(fontSize: MyDim.fontSizebetween, fontWeight: FontWeight.w700),),
              decoration: BoxDecoration(
                // image: 'Assets/images/logoblack.png',
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Family Community', style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => userprofile()));
              },
            ),
            ListTile(
              title: Text('Service Needs' , style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceNeeds()));
              },
            ),
            ListTile(
              title: Text('Travel Guide' , style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => TravelGuide()));
              },
            ),

            ListTile(
              title: Text('Nearest Building' , style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => NearestBuilding()));
              }, ),
            ListTile(
              title: Text('Guidance' , style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => Guidance()));
              }, ),
            ListTile(
              title: Text('Edit Profile' , style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => SetupProfile3(uid: '',)));
              }, ),
            ListTile(
              title: Text('Logout' , style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
                onTap: () {showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return WillPopScope(
                      onWillPop: () async => false,
                      child: AlertDialog(
                        title: Text('Logout'),
                        content: Text('Are you sure you want to log out?'),
                        actions: [
                          TextButton(
                            child: Text('No'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: Text('Yes'),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
                            },
                          ),
                        ],
                      ),
                    );
                  },); })
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Form(
          key:_formKey ,
          child: Padding(
            padding: const EdgeInsets.only(top:MyDim.fontSizebetween),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height:MyDim.SizedBoxtiny*8,),
                    Container(
                      height:MyDim.fontSizeButtons*3,
                      width:MyDim.fontSizeButtons*3,
                      decoration: BoxDecoration(
                          image: DecorationImage(image:
                          AssetImage('Assets/images/img_12.png'),
                          )
                      ),
                    ),

                    Text('\u{00A0}'),
                    Text("Get in Touch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: MyDim.fontSizeButtons),)
                  ],
                ),
                Center(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height:MyDim.SizedBoxtiny*3,),
                SizedBox(
                  width: 370.0,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                    controller: _nameController,
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MyDim.SizedBoxsmall*3.0,
                ),

                SizedBox(
                  width: 370.0,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!value.contains('@')) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.alternate_email_rounded,color: Colors.black,),
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MyDim.SizedBoxsmall*3.0,
                ),

                SizedBox(
                  width: 370.0,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your phone number';
                      }
                      if (value.length != 11) {
                        return 'phone number Must be 11 number';
                      }
                      return null;
                    },
                    maxLength: 11,
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,


                    style: TextStyle(
                        fontSize: 20.0
                    ),
                    decoration: InputDecoration(
                      errorText: _errorMessage,

                      suffixIcon: Icon(Icons.call,color: Colors.black,),
                      labelText: 'Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MyDim.SizedBoxsmall*3.0,
                ),


                SizedBox(
                  width: 370.0,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your message';
                      }
                      return null;
                    },
                    controller: _messageController,                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 40),
                      labelText: '   Leave Your Message',

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: MyDim.SizedBoxsmall*2.5,
                ),

                // Padding(
                //   padding: const EdgeInsets.only(right:MyDim.paddingUnit*10),
                // ),
                // TextButton(onPressed: (){}, child:Text('Submit')),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:  Color(0xFF00CDD0)
                    ),
                    width: 180.0,
                    height:70.0,
                    child: TextButton(
                      onPressed: _submitFeedback,
                      child: Text('Submit'),
                    ),),

                SizedBox(height:20.0 ,),
              ],
            ),
          ),
        ),
      ),

    );

  }
}