import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/main_pages/home_page.dart';
import 'package:shop_app/pages/register_page/sign_up.dart';
import 'package:shop_app/pages/welcome_page/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(shopApp());
}

class shopApp extends StatelessWidget {
  const shopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) => WelcomePage(),
        "/sign_page":(context) => SignUpPage(),
        "/home_page":(context) => HomePage()
      },
      
    );
  }
}
