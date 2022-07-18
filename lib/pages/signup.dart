import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Signup extends StatelessWidget {
  const Signup ({Key? key}) : super (key: key) ;
  @override
  Widget build (BuildContext context) {
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
                      'Signup',
                      style: const TextStyle(fontSize: 40 , fontFamily: "font" ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),

                    SvgPicture.asset("assets/icons/signup.svg" , width: 240, ),
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
                        "Sign up",
                        style: const TextStyle(fontSize: 24),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 100, vertical: 13)),
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
                        Text("Already have an Account ? " , style: TextStyle(color: Colors.purple[700] ) ),

                        GestureDetector(
                            onTap: (){ Navigator.pushNamed(context, "/login");},
                            child: Text(" Sign In ", style: TextStyle(color: Colors.purple[700]),)),

                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          child:
                          Expanded(

                              child:
                              Divider(
                                thickness: 0.6,
                                color: Colors.purple,
                              )
                          ),

                        ),
                        Text("   Or   " ,
                          style: TextStyle(fontSize: 17,
                              color: Colors.purple )),
                        Container(
                          width: 150,
                          child:
                          Expanded(
                              child:
                              Divider(
                                thickness: 0.6,
                                color: Colors.purple,
                              )
                          ),

                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 27),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){      },
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                  Border.all(color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/facebook.svg",
                                color: Colors.purple[400],
                                height: 27,
                              ),
                            ),
                          ),
                          SizedBox(width: 22,) ,
                          GestureDetector(
                            onTap: (){      },
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                  Border.all(color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/twitter.svg",
                                color: Colors.purple[400],
                                height: 27,
                              ),
                            ),
                          ),
                          SizedBox(width: 22,) ,
                          GestureDetector(
                            onTap: (){      },
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                  Border.all(color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/google-plus.svg",
                                color: Colors.purple[400],
                                height: 27,
                              ),
                            ),
                          ),



                        ],
                    )

                    )
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset("assets/icons/signup_top.png" , width: 155,)
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset("assets/images/main_bottom.png" , width: 100,)
              )
            ],
          ),

        )
    );
  }
}