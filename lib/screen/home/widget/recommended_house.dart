import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:rental_app/model/house.dart';
import 'package:rental_app/screen/home/widget/circular_icon_button.dart';

class RecommendedHouse extends StatelessWidget {
  //  RecommendedHouse({Key? key}) : super(key: key);

  final recommendedList=House.generateRecommend();
  @override
  Widget build(BuildContext context) {
      return Container(
        height:340,
        child:ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index)=>(
            Container(
              height:300,
              width:230,
              padding:EdgeInsets.all(10),
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius:BorderRadius.circular(8),

              ),
              child:Stack(
                children:[
                  Image.asset(
                  recommendedList[index].imageUrl,
                  fit:BoxFit.cover,
                  height:300,
                ),
                const Positioned(
                  right:15,
                  top:15,
                  child: CircleIconButton(
                  iconUrl:'assets/icons/mark.svg',
                  color: Colors.red
                )),
                Positioned(
                  bottom:0,
                  left:0,
                  right:0,
                  child: Container(
                    color:Color.fromARGB(135, 243, 235, 235),
                    padding:EdgeInsets.all(10),
                    child:Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          // mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text(recommendedList[index].name,
                             style:TextStyle(color:Color.fromARGB(255, 47, 39, 39),
                             fontSize:16, fontWeight:FontWeight.bold
                             ),),
                             SizedBox(height:5),
                            Text(recommendedList[index].address,
                              style:TextStyle(fontWeight:FontWeight.bold, fontSize:13)
                            )
                          ],
                          
                        ),
                        CircleIconButton(iconUrl:'assets/icons/mark.svg',
                            color:Colors.red
                          )
                      ],
                    )
                  )
                  )

                ]
              )
            )
          ),
          

          
           separatorBuilder: (_, index)=>SizedBox(width:20),
            itemCount: recommendedList.length)
      );
  }
}