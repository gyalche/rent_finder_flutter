import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CircleIconButton extends StatelessWidget {
  final String iconUrl;
  final Color color;

  const CircleIconButton({Key? key, required this.iconUrl, required this.color})
   : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:30, 
      height:30, 
      padding:EdgeInsets.all(5),
      decoration:BoxDecoration(
        color:color,
        shape:BoxShape.circle
      ),
      child:SvgPicture.asset(iconUrl)
    );
  }
}