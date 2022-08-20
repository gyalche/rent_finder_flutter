import 'package:flutter/material.dart';
import 'package:rental_app/screen/home/home.dart';
import 'package:rental_app/screen/home/widget/customized_button.dart';
class WelComeScreen extends StatelessWidget {
  const WelComeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height:MediaQuery.of(context).size.height,
        width:double.infinity,
        decoration:const BoxDecoration(
          image:DecorationImage(
            image: AssetImage("assets/images/backgroundImage.png"
              
            ),
            fit:BoxFit.cover,  
          )
        ),
        
      child:Column(
          mainAxisAlignment:MainAxisAlignment.end,
          children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height:80,
                  width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    color:Colors.black,
                    border:Border.all(width:1, color:Colors.white),
                    borderRadius:BorderRadius.circular(10),
                    
                    
                  ),
                  child:Center(
                    child:Text("Login", style:const TextStyle(
                      color:Colors.white, fontSize:30),
                      
                    )
                  )
                ),
              
              ),
                Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  // onTap: (){
                  //    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  //   },
                  
                  child: Container(
                    height:80,
                    width:MediaQuery.of(context).size.width,
                    decoration:BoxDecoration(
                      color:Colors.purple,
                      border:Border.all(width:1, color:Colors.white),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child:Center(
                      child:Text("Sign up", style:const TextStyle(
                        color:Colors.white, fontSize:30),
                        
                      )
                    )
                  ),
                ),
              
              )
          ]
        )
      )
    );
  }
}