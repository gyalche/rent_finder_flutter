import 'package:flutter/material.dart';
import 'package:rental_app/model/house.dart';
import 'package:rental_app/screen/detail/about.dart';
import 'package:rental_app/screen/detail/content_intro.dart';
import 'package:rental_app/screen/detail/detailAppBar.dart';
import 'package:rental_app/screen/detail/house_info.dart';

class DetailPage extends StatelessWidget {
  final House house;
  const DetailPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              DetailAppBar(house:house),
              SizedBox(height:20),
              ContentIntro(house:house),
              SizedBox(height:20),
              HouseInfo(),
              SizedBox(height:20),
              About(),
              SizedBox(height:20),
              Container(
                padding:EdgeInsets.symmetric(horizontal:40),
                child:ElevatedButton(
                onPressed: (){}, 
                child: Container(
                  
                  alignment:Alignment.center,
                  padding:EdgeInsets.symmetric(
                    vertical:15,
                  ),
                  child:Text("Book Now", style:TextStyle(color:Colors.white, fontWeight:FontWeight.bold, fontSize:16))
                ),
                 style:ElevatedButton.styleFrom(
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(8),
                  ),
                  primary:Colors.purple,
                  
                ))
              ),
              SizedBox(height:20),



            ]
          )
        )
    );
  }
}