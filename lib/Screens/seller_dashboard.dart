import 'dart:ui';
import 'package:expiry_remainder/seller_login.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expiry_remainder/auth.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SellerDashboard extends StatefulWidget {
  @override
  _SellerDashboardState createState() => _SellerDashboardState();
}

class _SellerDashboardState extends State<SellerDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: Svg('assets/dash.svg'), fit: BoxFit.fitHeight),
        ),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: (MediaQuery.of(context).size.height) / 18,
                        ),
                        Row(
                          children: [
                            SizedBox.fromSize(
                              size: Size(56, 56), // button width and height
                              child: ClipOval(
                                child: Material(
                                  color: Colors.transparent, // button color
                                  child: InkWell(
                                      splashColor: Colors.blue[900], // splash color
                                      onTap: () {
                                        signOutGoogle();
                                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return SellerLoginPage();}), ModalRoute.withName('/'));
                                      }, // button pressed
                                      child: Icon(Icons.logout)
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: (MediaQuery.of(context).size.width) / 1.5,
                            ),
                            CircleAvatar(
                              backgroundImage: NetworkImage(imageUrl),
                              backgroundColor: Colors.transparent,
                              radius: 25,
                            )
                          ],
                        ),
                        Text('Expiry items',
                            style: GoogleFonts.fugazOne(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w200)),
                        Text(
                          'of '+name,
                          style: GoogleFonts.fugazOne(
                              fontSize: 17,
                              color: Colors.white
                          ),
                        ),
                      ])),
              floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.camera_rounded),
                backgroundColor: Colors.transparent,
                splashColor: Colors.grey[500],
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 3),
                      content: Text("Camera Clicked!")));
                },
              ),
            )));
  }
}
