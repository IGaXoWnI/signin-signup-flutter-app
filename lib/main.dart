import 'package:flutter/material.dart';
import './pages/welcome.dart';
import './pages/signin.dart';
import './pages/signup.dart';



void main() {
  runApp (const MyApp()) ;
}
class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super (key: key) ;
  @override
  Widget build (BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),


    );
  }

}
class Home extends StatelessWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: "/" ,
        routes: {
          "/": (context) => const Welcome(),
          "/login": (context) => const Signin (),
          "/signup": (context) => const Signup(),
        }
    );
  }
}

