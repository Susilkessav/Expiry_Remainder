import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerLoginPage extends StatelessWidget {
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
                          fontWeight: FontWeight.w200)),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width) / 1.5,
                  height: (MediaQuery.of(context).size.height) / 20,
                  child: GoogleSignInButton(
                    splashColor: Colors.blue[900],
                    onPressed: () {},
                    darkMode: true,
                    borderRadius: 50,
                    textStyle: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
