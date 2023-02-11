
import 'package:flutter/material.dart';
import 'package:shop_app/pages/main_pages/home_page.dart';
import 'package:shop_app/pages/sign_up_page/sign_up.dart';
import 'package:shop_app/pages/welcome_page/welcome_page.dart';


void main() {
  runApp(shopApp());
}
class shopApp extends StatelessWidget {
const shopApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: WelcomePage()
      // home: SignUpPage(),
    );
  }
}