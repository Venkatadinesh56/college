import 'package:flutter/material.dart';
import 'package:sample/chnage_password3.dart';
import 'package:sample/main.dart';
class ChangePassword2 extends StatefulWidget {
  const ChangePassword2({super.key});

  @override
  State<ChangePassword2> createState() => _ChangePassword2State();
}


class _ChangePassword2State extends State<ChangePassword2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
      child:  Column(children: [
        
        SizedBox(height: 80,),
            CircleAvatar(
               radius: 40,
              backgroundColor: Colors.orange,
              
              child: Icon(Icons.apple,size: 30,),
            
            ),
        Text("Reset your password",style: TextStyle(fontSize: 20,color: Colors.blue),),
        SizedBox(height: 10,),
        Text("You have sent a four digit code on your phone/email"),
           
              
              
            
            
            Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 7),
        child: Column(
          children: <Widget>[
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Four digit number',
              ),
            )
          ],
        )
      ),

      Padding(
 padding: EdgeInsets.fromLTRB(10, 0, 10, 7),
         child: Column(
          children: <Widget>[
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'New Password',
              ),
            )
          ],
        )
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
        child: Column(
          children: <Widget>[
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'enter same password',
              ),
            )
          ],
        )
      ),
    
      ElevatedButton(
          child: Text('Reset Password'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 20, 
                 fontStyle: FontStyle.normal),
          ),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>ChangePassword3()));
          },
        ),
            
        ],),
      ),
    );
  }
}
