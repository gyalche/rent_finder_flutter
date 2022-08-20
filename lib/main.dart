import "package:flutter/material.dart";
import 'package:rental_app/screen/home/home.dart';
import 'package:rental_app/screen/home/widget/login.dart';
import 'package:rental_app/screen/home/widget/sginup.dart';
import 'package:rental_app/screen/home/widget/splash_screen.dart';
import 'package:rental_app/screen/welcome_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
void main()async{
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        backgroundColor:Color(0xFFF5F6f6),
        primaryColor:Color(0XFF811B83),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFA5019)),
        textTheme:TextTheme(headline1:TextStyle(color:Color(0xFF100E34),),
          bodyText1:TextStyle(color:Color(0xFF100E34).withOpacity(0.5))
        ),
      ),
      home:SplashScreen(),
      routes:<String, WidgetBuilder>{
        '/signup': (BuildContext context)=>new SignUp()
      }
      
    );
  }
}