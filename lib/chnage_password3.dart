import 'package:flutter/material.dart';
import 'package:sample/main.dart';
class ChangePassword3 extends StatefulWidget {
  const ChangePassword3({super.key});

  @override
  State<ChangePassword3> createState() => _ChangePassword3State();
}

class _ChangePassword3State extends State<ChangePassword3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
       child: Column(children: [
        SizedBox(height:70),
        CircleAvatar(
          radius: 40,
          child: Icon(Icons.apple,size: 30,),
        ),
        SizedBox(height: 10,),
        Text('Whoo Whoo!',style: TextStyle(fontSize:20,color: Colors.blue ),),
         SizedBox(height: 15,),
         Text('Your password has been reset succeessfully'),
         Text('Now login with your new password'),
         SizedBox(height: 25,),
         ElevatedButton(
          child: Text('Login'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 20, 
                 fontStyle: FontStyle.normal),
          ),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Home()));
          },
        ),
        ],),
      ),
    );
  }
}