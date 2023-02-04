
import 'package:flutter/material.dart';
import 'package:shop_app/pages/home_page.dart';


void main() {
  runApp(shopApp());
}
class shopApp extends StatelessWidget {
const shopApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: ,
    );
  }
}