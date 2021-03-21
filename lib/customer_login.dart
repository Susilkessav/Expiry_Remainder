import 'dart:ui';
import 'package:expiry_remainder/Screens/customer_dashboard.dart';
import 'package:expiry_remainder/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerLoginPage extends StatefulWidget {
  @override
  _CustomerLoginPageState createState() => _CustomerLoginPageState();
}

class _CustomerLoginPageState extends State<CustomerLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: Svg('assets/signin.svg'), fit: BoxFit.fitHeight),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
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
                          color: Color(0xFFF2AA4C),
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
                      onPressed: () {
                        signInWithGoogle().whenComplete(() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return CustomerDashboard();
                              },
                            ),
                          );
                        });
                      },
                      darkMode: true,
                      borderRadius: 50,
                      textStyle: GoogleFonts.lato(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
