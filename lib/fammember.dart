import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:monkez/Constants/Dimensions.dart';
import 'package:monkez/ContactUS.dart';
import 'package:monkez/NearestBuilding.dart';
import 'package:monkez/ServiceNeeds.dart';
import 'package:monkez/SetUpProfile3.dart';
import 'package:monkez/Userprofile.dart';
import 'package:monkez/WelcomePage.dart';
import 'package:monkez/guidance.dart';
import 'package:monkez/models/members.dart';
import 'package:monkez/travelScan.dart';

class fam extends StatefulWidget {
  Members member;
  fam(this.member);
  @override
  State<fam> createState() => _famState();
}

class _famState extends State<fam> {
  bool? Nationalid = false;
  bool? driverLisence = false;
  bool? birthCirt = false;
  bool? HSCirt = false;
  bool? passport = false;
  bool? visa = false;
  bool? vaccine = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: new Drawer(),
        appBar: new AppBar(
          backgroundColor: Color(0xFF00CDD0),
          leading: IconButton(
            onPressed: () {},
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
                child: Image(
                  image: ResizeImage(AssetImage('Assets/images/blackLogo.png'),
                      width: 1000, height: 800),
                ),
                // child: Text('Monkez',style: TextStyle(fontSize: MyDim.fontSizebetween, fontWeight: FontWeight.w700),),
                decoration: BoxDecoration(
                  // image: 'Assets/images/logoblack.png',
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text(
                  'Family Community',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => userprofile()));
                },
              ),
              ListTile(
                title: Text(
                  'Service Needs',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ServiceNeeds()));
                },
              ),
              ListTile(
                title: Text(
                  'Travel Guide',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TravelGuide()));
                },
              ),
              ListTile(
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUS()));
                },
              ),
              ListTile(
                title: Text(
                  'Nearest Building',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NearestBuilding()));
                },
              ),
              ListTile(
                title: Text(
                  'Guidance',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Guidance()));
                },
              ),
              ListTile(
                title: Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SetupProfile3(uid: '',)));
                },
              ),
              ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomePage()));
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 45.0,
              ),
              // new Container(
              //   margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              //   alignment: Alignment.topLeft,
              //   child: IconButton(
              //     icon: const Icon(
              //       Icons.arrow_circle_left_rounded,
              //       color: Color.fromARGB(255, 0, 205, 208),
              //       size: 50,
              //     ),
              //     tooltip: 'back Icon',
              //     onPressed: () {
              //       Navigator.of(context)
              //           .push(MaterialPageRoute(builder: (_) => userprofile()));
              //     },
              //
              //   ),
              // ),
              new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: new Image.asset(
                      widget.member.urlphoto,
                      height: 140.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.member.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Text(widget.member.address,
                            style: TextStyle(fontSize: 15)),
                      ),
                      new Container(
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.all(10),
                              side: BorderSide(color: Colors.black, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ) //<-- SEE HERE
                              ),
                          onPressed: () {
                            AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.success,
                                    animType: AnimType.topSlide,
                                    showCloseIcon: true,
                                    title: "Success",
                                    desc: 'Friend Request sent successfully',
                                    btnOkOnPress: () {})
                                .show();
                          },
                          icon: Icon(
                            // <-- Icon
                            Icons.person_add_alt,
                            color: Colors.black,
                            size: 26.0,
                          ),
                          label: Text('Add ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black)), // <-- Text
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Container(
                    color: Color.fromARGB(255, 0, 205, 208),
                    margin: EdgeInsets.fromLTRB(12, 30, 12, 0),
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    alignment: Alignment.center,
                    child: Text(
                      'Family Members',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 205, 208).withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    new Row(
                      children: members.map((e) {
                        if (e.id != widget.member.id) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              // color: Colors.blue,
                              child: familymember(e),
                            ),
                          );
                        } else {
                          return Text("");
                        }
                      }).toList(),
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(10),
                            side: BorderSide(color: Colors.black, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ) //<-- SEE HERE
                            ),
                        onPressed: () {},
                        icon: Icon(
                          // <-- Icon
                          Icons.add_circle_outline,
                          color: Colors.black,
                          size: 26.0,
                        ),
                        label: Text('Add Family Member',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black)), // <-- Text
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      shadowColor:
                          Color.fromARGB(255, 0, 205, 208).withOpacity(0.5),
                      padding: EdgeInsets.all(10),
                      side: BorderSide(
                          color: Color.fromARGB(255, 0, 205, 208), width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ) //<-- SEE HERE
                      ),
                  onPressed: () {},
                  icon: Icon(
                    // <-- Icon
                    Icons.folder,
                    color: Color.fromARGB(255, 66, 65, 65),
                    size: 50.0,
                  ),
                  label: Text('Documents',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)), // <-- Text
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 205, 208),
                    primary: Colors.black87,
                    minimumSize: Size(88, 36),
                    padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                  onPressed: () {
                    AwesomeDialog(
                      context: context,
                      body: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Column(children: [
                            CheckboxListTile(
                              value: Nationalid,
                              controlAffinity: ListTileControlAffinity
                                  .leading, //checkbox at left
                              onChanged: (bool? value) {
                                // print('Before update: Nationalid = ${Nationalid}');
                                setState(() {
                                  Nationalid = value;
                                });
                                // print('After update: Nationalid = ${Nationalid}');
                              },
                              title: Text(
                                "National ID",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            CheckboxListTile(
                              value: driverLisence,
                              controlAffinity: ListTileControlAffinity
                                  .leading, //checkbox at left
                              onChanged: (bool? value) {
                                setState(() {
                                  driverLisence = value;
                                });
                              },
                              title: Text(
                                "Driver's lisence",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            CheckboxListTile(
                              value: birthCirt,
                              controlAffinity: ListTileControlAffinity
                                  .leading, //checkbox at left
                              onChanged: (bool? value) {
                                setState(() {
                                  birthCirt = value;
                                });
                              },
                              title: Text(
                                "Birth Certificate",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            CheckboxListTile(
                              value: HSCirt,
                              controlAffinity: ListTileControlAffinity
                                  .leading, //checkbox at left
                              onChanged: (bool? value) {
                                setState(() {
                                  HSCirt = value;
                                });
                              },
                              title: Text(
                                "High School Graduation Certificate",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            CheckboxListTile(
                              value: passport,
                              controlAffinity: ListTileControlAffinity
                                  .leading, //checkbox at left
                              onChanged: (bool? value) {
                                setState(() {
                                  passport = value;
                                });
                              },
                              title: Text(
                                "Passport",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            CheckboxListTile(
                              value: visa,
                              controlAffinity: ListTileControlAffinity
                                  .leading, //checkbox at left
                              onChanged: (bool? value) {
                                setState(() {
                                  visa = value;
                                });
                              },
                              title: Text(
                                "Acquired Visas",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            CheckboxListTile(
                              value: vaccine,
                              controlAffinity: ListTileControlAffinity
                                  .leading, //checkbox at left
                              onChanged: (bool? value) {
                                setState(() {
                                  vaccine = value;
                                });
                              },
                              title: Text(
                                "Vaccines",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ]);
                        },
                      ),
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Select documents ",
                      desc: 'Choose documents you want to access',
                      btnOkOnPress: () {},
                      btnCancelOnPress: () {},
                    ).show();
                  },
                  child: Text('Document Access',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget familymember(Members member) {
    return InkWell(
      child: Column(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Image.asset(
              member.urlphoto,
              height: 90.0,
              fit: BoxFit.cover,
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            // alignment: Alignment.center,
            child: Text(
              member.name,
              // textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
            //   alignment: Alignment.center,
            child: Text(member.pos,
                //     textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15)),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
            this.context, MaterialPageRoute(builder: (context) => fam(member)));
      },
    );
  }
}
