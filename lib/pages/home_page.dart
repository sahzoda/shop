import 'package:flutter/material.dart';

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

          title: Container(
          width: double.infinity,
          color: Colors.black12,
         child:   Center(
          child: TextField(
            decoration: InputDecoration(
             fillColor: Colors.red,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search...',
                ),
              ),
          ),
          ),
          //   IconButton(onPressed: (() {}),
          //    icon: Icon(Icons.search,color: Colors.red,))
         
          bottom: TabBar(
            tabs: [
              Text("Home"),
              Text("Category"),
              Text("Stores"),
              Text("Cart"),
              Text("Profile"),
            ]
           
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