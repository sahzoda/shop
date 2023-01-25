import 'package:flutter/material.dart';

class tabBarWidget extends StatelessWidget {
  const tabBarWidget({required this.labels,
    Key? key,
  }) : super(key: key);
final String labels;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Text(labels),
      ]
     
      );
  }
}