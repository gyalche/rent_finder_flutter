import 'dart:io';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:rental_app/screen/home/widget/sginup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
 
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController=new TextEditingController();
  final passwordController=new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child:Stack(
                  children: [
                    Container(
                      padding:EdgeInsets.fromLTRB(15, 110, 0, 0),
                      child:Text("Hellow world", style:TextStyle(
                        fontSize:40, fontWeight:FontWeight.bold,
                      ))
                    )
                  ],
                )
              ),
              Container(
                padding:EdgeInsets.only(top:35, left:20, right:30),
                child:SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller:emailController,
                        // cursorColor:Colors.white
                        textInputAction: TextInputAction.next,
                        decoration:InputDecoration(
                          labelText:'Email',
                          labelStyle: TextStyle(
                            fontFamily:'Montserrat',
                            fontWeight:FontWeight.bold,
                            color:Colors.grey
                          ),
                          focusedBorder:UnderlineInputBorder(
                            borderSide:BorderSide(color:Colors.green)
                          )
                        )
                      ),
                      SizedBox(height:20),
                       TextField(
                        controller:passwordController,
                        textInputAction:TextInputAction.done,
                        obscureText:true,
                        decoration:InputDecoration(
                          labelText:'Password',
                          labelStyle: TextStyle(
                            fontFamily:'Montserrat',
                            fontWeight:FontWeight.bold,
                            color:Colors.grey
                          ),
                          focusedBorder:UnderlineInputBorder(
                            borderSide:BorderSide(color:Colors.green)
                          )
                        )
                      ),
                      SizedBox(height:5.0),
                      Container(
                        padding:EdgeInsets.only(top:15, left:20),
                       
                        alignment:Alignment(1, 5),
                        child:InkWell(
                          onTap: (){},
                          child:Text(
                            "Forgot password", style:TextStyle(
                              color:Colors.black, fontWeight:FontWeight.bold,
                              fontFamily:'Montserrat',
                              decoration:TextDecoration.underline,
                            )
                          )
                        )
                      ),
                      SizedBox(height:40),
                        
                      Container(
                        height:40,
                        child:Material(
                          borderRadius:BorderRadius.circular(20),
                          shadowColor:Colors.greenAccent, 
                          color:Colors.black,
                          elevation:7,
                          child:GestureDetector(
                            onTap: (){
                                
                            },
                            child:Center(child:
                             Text("LOGIN",
                              style:TextStyle(
                                color:Colors.white, fontSize:16, fontWeight:FontWeight.bold,
                                fontFamily:'Montserrat',
                              )))
                        
                          )
                        )
                      ),
                      SizedBox(height:25),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  SignUp()
                              ));
                            },
                            child:Text(
                              'Register if you dont have an account',
                               style:TextStyle(
                                 color:Colors.blueGrey, fontWeight:FontWeight.bold,
                                 decoration:TextDecoration.underline,
                                 ))
                          )
                        ]
                      )
                        
                      
                    ],
                  ),
                )
              )
            ],
          ),
        )

    );
  }
}