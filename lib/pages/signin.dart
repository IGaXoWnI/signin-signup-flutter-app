import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main() {
  runApp (const Signin()) ;
}
class Signin extends StatelessWidget {
  const Signin ({Key? key}) : super (key: key) ;
  @override
  Widget  build (BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity ,
          width: double.infinity,

          child: Stack(
            children: [
              SizedBox(
                width: double.infinity ,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),

                    const Text(
                      'Login',
                      style: const TextStyle(fontSize: 40 , fontFamily: "font" ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),

                    SvgPicture.asset("assets/icons/login.svg" , ),
                    const SizedBox(
                      height: 45,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 290,
                      height: 57,
                      padding: EdgeInsets.symmetric(horizontal:16 , vertical: 11 ),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),
                             hintText: "Your Email :",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 290,
                      height: 57,
                      padding: EdgeInsets.symmetric(horizontal: 16  ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              Icons.visibility,
                              color: Colors.purple[900],
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.purple[800],
                              size: 19,

                            ),
                            hintText: "Password :",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: const Text(
                        "login",
                        style: const TextStyle(fontSize: 24),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 116, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? " , style: TextStyle(color: Colors.purple[700] ) ),

                        GestureDetector(
                            onTap: (){ Navigator.pushNamed(context, "/signup");},
                            child: Text(" Sign up", style: TextStyle(color: Colors.purple[700]),)),

                      ],
                    )

                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset("assets/images/main_top.png" , width: 155,)
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset("assets/images/login_bottom.png" , width: 160,)
              )
            ],
          ),

        )
    );

  }
}