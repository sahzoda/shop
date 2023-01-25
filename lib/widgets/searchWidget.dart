import 'package:flutter/material.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            border: Border.all(width: 1,color: Colors.red) 
            ),
               child:   Row(
        children:[
          Row(
            children: [
              Icon(
                Icons.search,
                size: 22,
                color: Colors.grey,
              ),
              Text("What are you looking for?")
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              "Search"
            ),
          )
        ]
        ),
        
        ),
        
      ),
    );
  }
}

