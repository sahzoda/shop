import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/main_pages/home_page.dart';
import 'package:shop_app/pages/register_page/sign_up.dart';
import 'package:shop_app/welcome_page/welcome_page.dart';

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
      initialRoute: "/welcome_page",
      routes: {
       '/welcome_page': (context) => WelcomePage(),
        '/home_page': (context) => HomePage(),
        // '/customer_signup_page': (context) => CustomerSignUpPage(),
        // '/customer_page': (context) => CustomerPage(),
        // '/customer_login_page': (context) => CustomerLogInPage(),
        // '/suppliers_page': (context) => SuppliersPage(),
        // '/suppliers_signup': (context) => SuppliersSignUp(),
        // '/suppliers_login': (context) => SuppliersLogIn(),
      },
      
    );
  }
}
