import 'package:flutter/material.dart';
import 'package:sample/change_password2.dart';
import 'package:sample/main.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
       child: Column(children: [
          SizedBox(height: 100,),
        CircleAvatar(
          backgroundColor: Colors.orange,
          radius: 35,
          child: Icon(Icons.apple,size: 40,),
        ),
       Center(
        child: Text("It's okay! Reset your password"),
       ),

       Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Email Id',
              ),
            )
          ],
        )
      ),
  
           ElevatedButton(
          child: Text('continue'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 20, 
                 fontStyle: FontStyle.normal),
          ),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>ChangePassword2()));
          },
        ),
  
       ]),
      ),

      
    );
  }
}