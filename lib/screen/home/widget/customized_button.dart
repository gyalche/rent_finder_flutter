import 'package:flutter/material.dart';
class CustomizedButton extends StatelessWidget {
  final String? buttonText;
    final Color? buttonColor;
    final Function? onPressed;
  const CustomizedButton({Key? key,  this.buttonText, this.buttonColor, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
      return  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height:80,
                  width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    color:buttonColor,
                    border:Border.all(width:1, color:Colors.white),
                    borderRadius:BorderRadius.circular(10),
                    
                    
                  ),
                  child:Center(
                    child:Text(buttonText!, style:const TextStyle(
                      color:Colors.white, fontSize:30),
                      
                    )
                  )
                ),
                
    );
  }
}