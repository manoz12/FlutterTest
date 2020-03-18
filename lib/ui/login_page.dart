import 'package:flutter/material.dart';
import 'package:sign_in_flutter/model/sign_in.dart';
import 'package:sign_in_flutter/ui/firstscreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset("assets/images/panda.jpg"),
              SizedBox(height: 50,),
              _signInButton(),
                      
                            
                          ],
                        ),
                      ),
                  
                  ),
                    
                  );
                }
              
                _signInButton() {
                  return OutlineButton(
                    onPressed: (){
                      signInWithGoogle().whenComplete((){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return FirstScreen();
                            })
                          );
                      });
                    },
                    splashColor: Colors.grey.shade600,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    highlightElevation: 0,
                    borderSide: BorderSide(color:Colors.grey),
                    child: Padding(padding: const EdgeInsets.fromLTRB(0,10,0,10),
                    child: Row( mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(image: AssetImage("assets/images/google_logo.png"), height: 35.0,),
                        Padding(padding: const EdgeInsets.only(left: 10),
                        child: Text("Sign in with Google",style: TextStyle(fontSize: 20.0,
                        color: Colors.grey),),),

                      ],),
                    
                  ));
                }
}