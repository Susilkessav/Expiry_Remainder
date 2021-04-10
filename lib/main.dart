import 'dart:ui';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:expiry_remainder/customer_login.dart';
import 'package:expiry_remainder/seller_login.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        textTheme: GoogleFonts.latoTextTheme(),
        primaryColor: Colors.white,
        primaryColorBrightness: Brightness.light,
        brightness: Brightness.light,
        primaryColorDark: Colors.black87,
        canvasColor: Colors.white,
        // next line is important!
        appBarTheme: AppBarTheme(brightness: Brightness.light),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        primaryColorBrightness: Brightness.dark,
        primaryColorLight: Colors.black87,
        brightness: Brightness.dark,
        primaryColorDark: Colors.black87,
        indicatorColor: Colors.white,
        canvasColor: Colors.black87,
        // next line is important!
        appBarTheme: AppBarTheme(brightness: Brightness.values[0]),
      ),
      home: SigninPage(),
    );
  }
}

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: Svg('assets/homebg.svg'), fit: BoxFit.cover),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: (MediaQuery.of(context).size.height) / 4.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(75, 0, 0, 40),
                    child: Text("Expiry Reminder",
                        style: GoogleFonts.fugazOne(
                            fontSize: 50, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                      width: (MediaQuery.of(context).size.width) / 1.5,
                      height: (MediaQuery.of(context).size.height) / 20,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        child: Text("Sign in as customer",
                            style: GoogleFonts.lato(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                        onPressed: () => gotoCustomerLogin(context),
                      )),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height) / 20,
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width) / 1.5,
                    height: (MediaQuery.of(context).size.height) / 20,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shadowColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                      onPressed: () => gotoSellerLogin(context),
                      child: Text(
                        "Sign in as seller",
                        style: GoogleFonts.lato(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

Future gotoCustomerLogin(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => CustomerLoginPage()));
}

Future gotoSellerLogin(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SellerLoginPage()));
}
