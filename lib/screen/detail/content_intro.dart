import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:rental_app/model/house.dart';
class ContentIntro extends StatelessWidget {
  final House house;
  const ContentIntro({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(horizontal:20),
      // alignment: Alignment.topLeft,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(house.name, 
          style:TextStyle(color:Colors.black, fontWeight:FontWeight.bold, fontSize:20)),
           SizedBox(height:10),

          Text(house.address),
           SizedBox(height:10),
          Text('5000sqf'),
          SizedBox(height:4),
          RichText(text: TextSpan(
            children: [
              TextSpan(text:'\$4455', 
              style:TextStyle(color:Colors.black, fontWeight:FontWeight.bold, fontSize:20),

              ),
              
              TextSpan(
                text:'Per Month',style:TextStyle(color:Colors.grey, fontWeight:FontWeight.bold, fontSize:16),
              )
            ]
          ))
        ]
      )
    );
  }
}