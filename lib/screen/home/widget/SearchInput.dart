import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(15),
      child:TextField(
        keyboardType: TextInputType.text,
        decoration:InputDecoration(
          fillColor:Colors.white,
          filled:true,
          border:OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius:BorderRadius.circular(8)
          ),
          // label:Text("Search")
          hintText: "Search here ...",
          prefixIcon: Container(
            padding:EdgeInsets.all(15),
            child:SvgPicture.asset('assets/icons/search.svg')
          ),
          contentPadding: EdgeInsets.all(2)
        )
      )
    );
  }
}