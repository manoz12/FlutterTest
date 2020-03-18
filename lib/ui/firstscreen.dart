import 'package:flutter/material.dart';
import 'package:sign_in_flutter/model/sign_in.dart';

import 'login_page.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
       decoration: BoxDecoration(
         gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft, 
           colors: [Colors.blue.shade500,Colors.blue.shade500])
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.max,
         children: <Widget>[
           CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 60,
            backgroundColor: Colors.transparent,
           ),
           SizedBox(height: 40,),
           Text('Name', style: TextStyle(
             fontSize: 15,
             fontWeight: FontWeight.bold,
             color: Colors.black54
           ),),
           Text(name),
              SizedBox(height: 20),
              Text(
                'EMAIL',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(
                email,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              RaisedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPage();}), ModalRoute.withName('/'));
                },
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              )
            ],
          ),
        ),
      
    );
  }
  }