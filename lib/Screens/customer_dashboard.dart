import 'dart:ui';

import 'package:expiry_remainder/customer_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerDashboard extends StatefulWidget {
  @override
  _CustomerDashboardState createState() => _CustomerDashboardState();
}

class _CustomerDashboardState extends State<CustomerDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/loginc.jpg'), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                      SizedBox(
                        height: (MediaQuery.of(context).size.height) / 4.5,
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(75.0, 0, 0, 20),
                          child: Text('Sign in as customer',
                              style: GoogleFonts.fugazOne(
                                  color: Colors.white,
                                  fontSize: 55,
                                  fontWeight: FontWeight.w200)))
                    ])))));
  }
}
