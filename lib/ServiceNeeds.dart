import 'package:flutter/material.dart';
import 'package:monkez/ContactUS.dart';
import 'package:monkez/NearestBuilding.dart';
import 'package:monkez/SetUpProfile3.dart';
import 'package:monkez/UserProfile.dart';
import 'package:monkez/WelcomePage.dart';
import 'package:monkez/guidance.dart';
import 'package:monkez/home.dart';
import 'package:monkez/travelScan.dart';
import '../Constants/Dimensions.dart';
import '../Constants/DocumentButton.dart';
import '../Constants/ServiceNeeds.dart';
// import 'package:image/' as IMG;
import 'package:monkez/Constants/designConstants.dart';

class ServiceNeeds extends StatefulWidget {
  const ServiceNeeds({Key? key}) : super(key: key);

  @override
  State<ServiceNeeds> createState() => _ServiceNeedsState();
}

class _ServiceNeedsState extends State<ServiceNeeds> {

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50.0,),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color:Color(0xFF00CDD0), width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: ResizeImage(
                            AssetImage('Assets/images/img_13.png'),
                            width: 50,
                            height: 70),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Service Needs',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Choose the service that you need",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.2,
              endIndent: MyDim.paddingUnit * 3,
              indent: MyDim.paddingUnit * 3,
            ),
            SizedBox(height:MyDim.SizedBoxtiny*1,),
            DocumentButton(

                image: 'Assets/images/IDNeeds.png',
                label: 'National ID',
                clickdoc: openDialogID),
            SizedBox(height:MyDim.SizedBoxtiny*1,),
            DocumentButton(

                image: 'Assets/images/driver.png',
                label: 'Driver’s license',
                clickdoc: openDialogDriver),
            SizedBox(height:MyDim.SizedBoxtiny*1,),
            DocumentButton(

                image: 'Assets/images/birthNeeds.png',
                label: 'Birth Certificate',
                clickdoc: openDialogBirth),
            SizedBox(height:MyDim.SizedBoxtiny*1,),
            DocumentButton(

                image: 'Assets/images/pass.png',
                label: 'Passport',
                clickdoc: openDialogPassport),
            SizedBox(
              height: MyDim.SizedBoxsmall,
            ),
          ],
        ),
      ),
    );
  }

  Future openDialogID() => showDialog(
      context: context,
      builder: (context) =>
          InstructionsPopUp(onpressed: Done, steps: NationalID()));

  Future openDialogDriver() => showDialog(
      context: context,
      builder: (context) =>
          InstructionsPopUp(onpressed: Done, steps: DriverLisence()));
  Future openDialogBirth() => showDialog(
      context: context,
      builder: (context) =>
          InstructionsPopUp(onpressed: Done, steps: BirthCertificate()));
  Future openDialogPassport() => showDialog(
      context: context,
      builder: (context) =>
          InstructionsPopUp(onpressed: Done, steps: Passport()));

  void Done() {
    Navigator.of(context).pop();
  }
}