import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Welcome extends StatelessWidget {
  const Welcome ({Key? key}) : super (key: key) ;
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity ,
        width: double.infinity,

        child: Stack(
          children: [
            Container(
              width: double.infinity ,
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),

                  const Text(
                    'Welcome',
                    style: const TextStyle(fontSize: 40 , fontFamily: "font" ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  SvgPicture.asset("assets/icons/chat.svg" , ),
                  const SizedBox(
                    height: 45,
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
                          const EdgeInsets.symmetric(horizontal: 111, vertical: 13)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(fontSize: 20, color: Colors.grey[850]),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.purple[100]),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 100, vertical: 13)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                  ),

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
                child: Image.asset("assets/images/main_bottom.png" , width: 100,)
            )
        ],
        ),

      )
      );


  }
}



