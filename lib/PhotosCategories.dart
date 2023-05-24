import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:monkez/CategoriesSetUp2.dart';
import 'package:monkez/Constants/Dimensions.dart';
import 'package:monkez/ContactUS.dart';
import 'package:monkez/NearestBuilding.dart';
import 'package:monkez/ServiceNeeds.dart';
import 'package:monkez/SetUpProfile3.dart';
import 'package:monkez/UserProfile.dart';
import 'package:monkez/WelcomePage.dart';
import 'package:monkez/guidance.dart';
import 'package:monkez/travelScan.dart';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  TextEditingController dateinput = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(),
      appBar: new AppBar(
        backgroundColor:   Color(0xFF00CDD0),
        title: Center(
          child: Text('Personal Photos',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
              title: Text('Contact Us' , style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUS()));
              }, ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => SetupProfile3()));
              }, ),
            ListTile(
              title: Text('Logout' , style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
              }, ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: MyDim.paddingUnit * 1.5, left: MyDim.paddingUnit * 2.2),
              child: Expanded(
                child: Row(
                  children: <Widget>[
                    //My photos
                    Container(
                      width: MyDim.myWidth(context) * 0.8,
                      height: MyDim.myHeight(context) * 0.33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:Border.all(
                          color: Color(0xFF00CDD0),
                          width: 2,
                        ),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: MyDim.paddingUnit * 1,
                            left: MyDim.paddingUnit * 0.2),
                        child: Column(
                          children: [
                            Image.asset(
                              'Assets/images/personal photos.png',
                              width: MyDim.myWidth(context) * 0.3,
                              height: MyDim.myHeight(context) * 0.185,
                            ),
                            IconButton(
                              onPressed: () {
                                onClick();
                              },
                              icon: Icon(
                                Icons.add_circle_outline,
                                color: Colors.black,
                                size: 30.0,
                              ),
                            ),
                            Text(
                              'My Photos',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 30.0,
                    ),

                    //Bachelor
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //       bottom: MyDim.paddingUnit * 1.2,
                    //       left: MyDim.paddingUnit * 2),
                    //   child: Container(
                    //     child: Column(
                    //       children: [
                    //         Image.asset(
                    //           'Assets/images/myfam.png',
                    //           width: MyDim.myWidth(context) * 0.3,
                    //           height: MyDim.myHeight(context) * 0.2,
                    //         ),
                    //         IconButton(
                    //           onPressed: () {
                    //             onClick();
                    //           },
                    //           icon: Icon(
                    //             Icons.add_circle_outline,
                    //             color: Colors.black,
                    //             size: 30.0,
                    //           ),
                    //         ),
                    //         Text(
                    //           'Family',
                    //           style: TextStyle(
                    //             fontSize: 22.0,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            //second Column
            Padding(
              padding: const EdgeInsets.only(
                  top: MyDim.paddingUnit * 1.5, left: MyDim.paddingUnit * 2.2),
              child: Expanded(
                  child: Row(
                children: [
                  //Family
                  Container(
                    width: MyDim.myWidth(context) * 0.8,
                    height: MyDim.myHeight(context) * 0.33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:Border.all(
                        color: Color(0xFF00CDD0),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'Assets/images/familyPhotos.jpeg',
                          width: MyDim.myWidth(context) * 0.3,
                          height: MyDim.myHeight(context) * 0.2,
                        ),
                        IconButton(
                          onPressed: () {
                            onClick();
                          },
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Colors.black,
                            size: 30.0,
                          ),
                        ),
                        Text(
                          'Friends',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ),

            SizedBox(
              height: MyDim.myHeight(context)*0.03 ,
            ),
            Padding(
              padding: const EdgeInsets.only(left: MyDim.paddingUnit * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF00CDD0),
                      ),
                      width: MyDim.myWidth(context) * 0.4,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoriesSetUp2()));
                            });
                          },
                          child: Text(
                            'Done',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: MyDim.fontSizeButtons),
                          ))),
                  SizedBox(
                    width: MyDim.paddingUnit * 2,
                  ),
                  // GestureDetector(
                  //   onTap: (){
                  //     setState(() {
                  //       Navigator.push(context,MaterialPageRoute(builder:(context)=>CategoriesSetUp2()));
                  //     });
                  //   },
                  //   child:Text('Skip',style: TextStyle(color: Colors.grey,decoration:TextDecoration.underline,fontWeight: FontWeight.bold),),
                  // )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }

  void onClick() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: AlertDialog(
              backgroundColor: Colors.white,
              title: Container(
                width: 600,
                height: 170,
                child: Row(
                  children: [
                    //Upload
                    Column(
                      children: [
                        Image.asset(
                          'Assets/images/upload.png',
                          color: Colors.black,
                          width: 90.0,
                          height: 90.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF00CDD0)),
                          width: 100.0,
                          height: 50.0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Upload',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        )
                      ],
                    ),
                    //Camera
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: MyDim.paddingUnit * 1,
                          left: MyDim.paddingUnit * 3.5),
                      child: Expanded(
                          child: Column(
                        children: [
                          Image.asset(
                            'Assets/images/camera.png',
                            color: Colors.black,
                            width: 100.0,
                            height: 90.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFF00CDD0)),
                            width: 100.0,
                            height: 50.0,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Camera',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              content: Container(
                child: Stack(
                  children: [
                    //Expire Date text
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 2.0),
                      child: Text(
                        'Expire Date',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    //calender + date textfield
                    Center(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 10, bottom: 200.0),
                        child: TextField(
                          controller:
                              dateinput, //editing controller of this TextField
                          decoration: InputDecoration(
                            icon: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.calendar_today,
                                  color: Colors.cyan),
                            ), //icon of text field
                            labelText: "  Enter a date",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 18.0),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black),
                            ),
                          ),
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime(2001),
                                firstDate: DateTime(
                                    1920), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2009));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('dd-MM-yyyy').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateinput.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        ),
                      ),
                    ),

                    //OK Button
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 50.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF00CDD0)),
                          width: 200.0,
                          height: 50.0,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CategoriesSetUp2()));
                              });
                            },
                            child: Text(
                              'Done',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Cancel Button
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 180.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF00CDD0)),
                          width: 200.0,
                          height: 50.0,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Photos()));
                              });
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
