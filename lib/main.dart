import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:loginscreen/forgotpass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/home.dart';
import 'package:loginscreen/login.dart';
import 'package:loginscreen/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginscreen/pages/book.dart';
import 'package:loginscreen/pages/bridal.dart';
import 'package:loginscreen/pages/facial.dart';
import 'package:loginscreen/pages/groom.dart';
import 'package:loginscreen/pages/haircolor.dart';
import 'package:loginscreen/pages/hairstyling.dart';
import 'package:loginscreen/pages/home.dart';
import 'package:loginscreen/pages/intro.dart';
import 'package:loginscreen/pages/makeup.dart';
import 'package:loginscreen/pages/manicure.dart';
import 'package:loginscreen/uidata.dart';
import 'package:loginscreen/pages/haircut.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: 'AIzaSyCcM19trBVYlemCwrZLvCzx9vy5G7zwyiA', appId: '1:728555023991:android:3545bd53a052ef9093a072', messagingSenderId: 'messagingSenderId', projectId: 'flutterauth-d2448'));
  runApp(MaterialApp(

    home: MyApp(),

  ));
}


class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for Errors
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
              title: 'Flutter Firebase EMail Password Auth',
              theme: ThemeData(
              ),

              debugShowCheckedModeBanner: false,
              home:  HomePage(),
              routes: <String, WidgetBuilder>{
                UIData.homePageRoute: (BuildContext context) => HomePage2(),
                UIData.introPageRoute: (BuildContext context) => IntroPage(),
                UIData.bookPageRoute: (BuildContext context) => BookPage(),
                UIData.haircutPageRoute: (BuildContext context) => haircut(),
                UIData.bridalPageRoute: (BuildContext context) => bridal(),
                UIData.groomPageRoute: (BuildContext context) => groom(),
                UIData.hairstylingPageRoute: (BuildContext context) =>
                    hairstyling(),
                UIData.haircolorPageRoute: (BuildContext context) =>
                    haircolor(),
                UIData.makeupPageRoute: (BuildContext context) => makeup(),
                UIData.manicurePageRoute: (BuildContext context) => manicure(),
                UIData.facialPageRoute: (BuildContext context) => facial(),
              });
        }
    );
  }
}

class GoogleFonts {
  static ubuntuTextTheme(TextTheme textTheme) {}
}


HomeScreen() {}