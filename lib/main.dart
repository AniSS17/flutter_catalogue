import 'package:flutter/material.dart';
import 'package:flutter_catalogue/pages/home_page.dart';
import 'package:flutter_catalogue/pages/login_page.dart';
import 'package:flutter_catalogue/pages/process.dart';
import 'package:flutter_catalogue/utils/routes.dart';
import 'package:flutter_catalogue/utils/theme.dart';
import 'package:google_fonts/google_fonts.dart';
//flutter is all about widgets. Widget is a box aise yaad rakho
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // home: HomePage(),  either this line or "/" hoga
      themeMode: ThemeMode.light,
      // theme: ThemeData(primarySwatch: Colors.indigo,),
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // primaryTextTheme: GoogleFonts.latoTextTheme()),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/Home",  // default ye dikhaega
      routes: {  // app ke paas multiple screens hote h. konse screen m jaana iska use krte h
        "/": (context)=>LoginPage(), // by default ye page dikhaega  
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        // MyRoutes.processRoute:(context) => Process(),
      },
    ); 
  }
}