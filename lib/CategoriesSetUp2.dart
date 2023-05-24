import 'package:flutter/material.dart';
import 'package:monkez/Constants/Dimensions.dart';
import 'package:monkez/ContactUS.dart';
import 'package:monkez/Education.dart';
import 'package:monkez/MoneyRelated.dart';
import 'package:monkez/NearestBuilding.dart';
import 'package:monkez/PhotosCategories.dart';
import 'package:monkez/ServiceNeeds.dart';
import 'package:monkez/SetUpProfile3.dart';
import 'package:monkez/SetupProfile2.dart';
import 'package:monkez/SignUp.dart';
import 'package:monkez/UserProfile.dart';
import 'package:monkez/VaccinesCategories.dart';
import 'package:monkez/WelcomePage.dart';
import 'package:monkez/guidance.dart';
import 'package:monkez/travelScan.dart';
class CategoryModel{
  final String title;
  final String photoUrl;



  CategoryModel({
    required this.title,
    required this.photoUrl,

});
}

class CategoriesSetUp2 extends StatefulWidget {

  @override
  State<CategoriesSetUp2> createState() => _CategoriesSetUp2State();
}

class _CategoriesSetUp2State extends State<CategoriesSetUp2> {
  List<CategoryModel> categories=[
    CategoryModel(title: 'Personal Identification',
        photoUrl:'Assets/images/identification.jpg' ,


   ),

    CategoryModel(title: 'Money Related',
        photoUrl:'Assets/images/money.jpg',),
    CategoryModel(title: 'Education',
      photoUrl:'Assets/images/certificate.webp',),
    CategoryModel(title: 'Vaccines',
      photoUrl:'Assets/images/vaccines.jpg',),
    CategoryModel(title: 'Your Personal Photos',
      photoUrl:'Assets/images/personal photos.png',)
  ];


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
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Text(''
                      'Choose Your Category',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),

                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 20.0,
              ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                itemBuilder: (context,index)=>buildCategory(categories[index]),
              separatorBuilder: (context,index)=>SizedBox(
                height: 20.0,
              ),
              itemCount: categories.length,
            )

            ],
          ),
        )

    );
  }
// build item
  Widget buildCategory(CategoryModel category) => GestureDetector(
    onTap: (){
      if (category.title == 'Personal Identification' ) {
          // Your code here
         print('Personal');
          setState(() {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>SetProfile2()));
          });
        }
        else if(category.title == 'Money Related')
          {

            setState(() {
              Navigator.push(context,MaterialPageRoute(builder:(context)=>MoneyRelated()));
            });

      }
        else if(category.title == 'Education')
        {
          setState(() {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Education()));
          });

        }
      else if(category.title == 'Vaccines')
      {

        setState(() {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Vaccines()));
        });

      }
      else if(category.title == 'Your Personal Photos')
      {

        setState(() {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Photos()));
        });

      }
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(
            color:  Color(0xFF00CDD0),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                '${category.photoUrl}',
                height: 60.0,
               width: 50.0,
              ),
            ),
            Text(
              "${category.title}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          ),
        ),
      ),
    ),
  );
}
