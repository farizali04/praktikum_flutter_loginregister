import 'package:flutter/material.dart';
// import 'package:login_register/models/login_page.dart';
import 'package:login_register/models/loginPage2.dart';
// import 'package:login_register/models/register_page.dart';
import 'package:login_register/models/registerpage2.dart';
import 'package:login_register/models/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      initialRoute: '/',
      routes: {
        '/': (context) => Loginpage2(),
        // '/': (context) => LoginPage(),
        '/register': (context) => Registerpage2(),
        // '/register': (context) => RegisterPage(),
        '/profile' : (context)=> ProfilePage(),
      },
    );
  }
}