import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:rental_app/model/house.dart';
import 'package:rental_app/screen/home/widget/circular_icon_button.dart';
class BestOffer extends StatelessWidget {
  final listOffer=House.generateBestOffers();

  @override
  Widget build(BuildContext context) {
      return Container(
        padding:EdgeInsets.symmetric(horizontal:15, vertical:20),
        child: Column(
          children:[
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                Text("Best Offer", style:TextStyle(
                  color: Color.fromARGB(255, 27, 26, 26),
                  fontSize:16, fontWeight:FontWeight.bold,
                  )),
                Text('See All', style:TextStyle(
                  color: Color.fromARGB(255, 19, 19, 19),
                  fontSize:16, fontWeight:FontWeight.bold,
                  ))
                  
              ]
            ),
            SizedBox(height:10),

            ...listOffer.map((e) =>
              Container(
                alignment: Alignment.center,
                margin:EdgeInsets.only(bottom:10),
                padding:EdgeInsets.all(10),
               
                decoration:BoxDecoration(
                  color:Colors.white, borderRadius:BorderRadius.circular(10)
                ),

                child:Stack(
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      
                      children: [
                        Container(
                          width:150,
                          height:80, 
                          decoration:BoxDecoration(
                            image:DecorationImage(
                              image:AssetImage(e.imageUrl),
                              fit:BoxFit.cover
                            ),
                          borderRadius:BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width:10),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.start,
                          crossAxisAlignment:CrossAxisAlignment.start,
                          
                          children: [
                            Text(e.name, style:TextStyle(color:Color.fromARGB(255, 59, 55, 55), fontSize:16, fontWeight:FontWeight.bold)),
                            SizedBox(height:10),
                            Text(e.address, style:TextStyle(color:Color.fromARGB(255, 75, 72, 72), fontSize:13, fontWeight:FontWeight.bold))
                          ]
                        )
                      ]
                    ),
                    Positioned(
                      right:0,
                      child:CircleIconButton(
                      iconUrl: 'assets/icons/heart.svg',
                      color: Colors.grey))
                  ],
                )
              )
             ).toList()
          ]
        ),
      );
  }
}