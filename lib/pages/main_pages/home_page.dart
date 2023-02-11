import 'package:flutter/material.dart';
import 'package:shop_app/widgets/searchWidget.dart';
import 'package:shop_app/widgets/tabBarWidget.dart';

class HomePage extends StatefulWidget {
 HomePage({ Key? key 
 }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
int _selectedIndex=0;
List<Widget> _tabs=[
  Center(child: Text("Home Screen"),),
  Center(child: Text("Category Screen"),),
  Center(child: Text("Stores Screen"),),
  Center(child: Text("Cart Screen"),),
  Center(child: Text("Profile Screen"),),
];

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
          title: searchWidget(),
           bottom: TabBar(
            indicatorColor: Colors.blue,
            isScrollable: true,
            tabs: [
              
              tabBarWidget(labels: "Men"),
              tabBarWidget(labels: "Women"),
              tabBarWidget(labels: "Kids"),
              tabBarWidget(labels: "accessories"),
              tabBarWidget(labels: "Beauty"),
              tabBarWidget(labels: "Bags"),
              tabBarWidget(labels: "shoes"),
              tabBarWidget(labels: "electronics"),
              tabBarWidget(labels: "Home & Garden"),
            ],
          ),
        ),
        body: _tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (chosenIndex) {
            setState(() {});
            _selectedIndex=chosenIndex;
             },
          currentIndex: _selectedIndex,
       items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
         BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.shop,),label: "Stores"),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Profile")
        ]),
      ),
    );
  }
}

