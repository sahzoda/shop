import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/colors/app_colors.dart';
import 'LogSignWidget.dart';
import 'google_facebookGuestWidget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/inapp/inapp/bgImage.jpg"))),
      constraints: BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(
            height: 120,
            child:
                Image(image: AssetImage("assets/images/inapp/inapp/logo.jpg")),
          ),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 60,
              color: Colors.lightBlue,
              fontFamily: "Acme",
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(animatedTexts: [
              RotateAnimatedText("Buy"),
              RotateAnimatedText("Shop"),
              RotateAnimatedText("Duck Store"),
            ]),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    color: Colors.grey.withOpacity(0.7),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Suppliers only",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      color: Colors.grey.withOpacity(0.7),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 45,
                              child: Image(
                                image: AssetImage(
                                    'assets/images/inapp/inapp/logo.jpg'),
                              ),
                            ),
                            LogSignWidget(
                              title: "Log in",
                              onTap: () {},
                            ),
                            LogSignWidget(title: 'Sign Up', onTap: () {}),
                          ],
                        )))
              ],
            )
          ]),
          Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            color: AppColors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Cutomers',
                            style: TextStyle(
                                color: AppColors.yellow,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                        SizedBox(
                        height: 6,
                      ),
                    
          Padding(
            padding: const EdgeInsets.only(
              right: 70,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Colors.grey.withOpacity(0.7),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      LogSignWidget(
                        title: 'Log In',
                        onTap: () {},
                      ),
                      LogSignWidget(
                        title: 'Sign Up',
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/signup_page');
                        },
                      ),
                      SizedBox(
                        height: 45,
                        child: Image(
                          image: AssetImage('assets/images/inapp/inapp/logo.jpg'),
                        ),
                      ),
                    ],
                 
                     
                      )),
            ),
          ),
          
              // Container(
              //   color: Colors.grey.withOpacity(0.7),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       // GoogleFacebookGuestWidget(title: 'Google', icon: Icons.google, onTap: (){}),
              //       GoogleFacebookGuestWidget(
              //           title: 'Google',
              //           color: Color(0xff3F5123),
              //           icon: Icons.laptop_chromebook_sharp,
              //           onTap: () {}),
              //       GoogleFacebookGuestWidget(
              //           title: 'Facebook',
              //           color: Color(0xff3F5798),
              //           icon: Icons.facebook,
              //           onTap: () {}),
              //       GoogleFacebookGuestWidget(
              //           title: 'Guest',
              //           color: Color(0xff3DC5FB),
              //           icon: Icons.person,
              //           onTap: () async {
              //             try {
              //               final userCredential =
              //                   await FirebaseAuth.instance.signInAnonymously();
              //               print("Signed in with temporary account.");
              //             } on FirebaseAuthException catch (e) {
              //               switch (e.code) {
              //                 case "operation-not-allowed":
              //                   print(
              //                       "Anonymous auth hasn't been enabled for this project.");
              //                   break;
              //                 default:
              //                   print("Unknown error.");
              //               }
              //             }
              //           }),
              //     ],
              //   ),
              // )
        ]),
           ] ),
   ] 
   )
      )
         )
          );
        
  }
}
