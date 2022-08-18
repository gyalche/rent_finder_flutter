import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(horizontal:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About', style:TextStyle(fontWeight:FontWeight.bold, fontSize:20)),
          Text('The is a room, located in the kathmandu, maitidevi its all about spacing' + 
         ' your mind')
        ]
      )
    );
  }
}