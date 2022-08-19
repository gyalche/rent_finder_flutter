import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:rental_app/screen/home/widget/loginscreen.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children:[
                Container(
                child:Stack(
                  children: [
                    Container(
                      margin:EdgeInsets.only(top:100),
                      child:Image.asset("assets/icons/regis.png")
                      // padding:EdgeInsets.fromLTRB(15, 110, 0, 0),
                      // child:Text("Sign up", style:TextStyle(
                      //   fontSize:40, fontWeight:FontWeight.bold,
                      // ))
                    )
                  ],
                )
              ),
               Container(
                padding:EdgeInsets.only(top:35, left:20, right:30),
                child:Column(
                  children: [
                    TextField(
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
                           Text("signup",
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
                            Navigator.of(context).pop();
                            
                          },
                          child:Text(
                            'have an account? click here',
                             style:TextStyle(
                               color:Colors.blueGrey, fontWeight:FontWeight.bold,
                               decoration:TextDecoration.underline,
                               ))
                        )
                      ]
                    )
        
                    
                  ],
                )
              )
              
            ]
          ),
        )
      );
  }
}