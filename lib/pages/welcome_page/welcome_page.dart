import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage("assets/images/imapp/bgimage.jpg")                 
          )
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child:Column(
            children: [
              SizedBox(height: 120,
              child: Image(
                image: AssetImage("assets/images/inapp/logo.jpg")
                ),
                ),
            ]
            ) ,
        ),
      ),
    );
  }
}