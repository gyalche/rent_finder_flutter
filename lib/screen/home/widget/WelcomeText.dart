import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(horizontal:20, vertical:20),
      child:Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Hellow dawa", style:TextStyle(color:Color.fromARGB(255, 93, 91, 94), fontSize:16, fontWeight:FontWeight.bold)),
          SizedBox(height:10),
          Text("Find your sweet room", style:TextStyle(fontWeight:FontWeight.bold
          , fontSize:20,)),
        ],
      )
    );
  }
}