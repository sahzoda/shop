import 'package:flutter/material.dart';

class tabBarWidget extends StatelessWidget {
  const tabBarWidget({required this.labels,
    Key? key,
  }) : super(key: key);
final String labels;
  @override
  Widget build(BuildContext context) {
    return Tab(

      child:  Text(labels,style: TextStyle(color: Colors.black),),
      
     
      );
  }
}