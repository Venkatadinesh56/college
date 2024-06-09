
import 'dart:convert'; // Add this import statement for json.decode()
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample/change_password.dart';
import 'package:sample/change_password2.dart';
import 'package:sample/home.dart';
import 'package:sample/signup.dart';
import 'package:sample/student_dashbord.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatelessWidget {
  var u = false;
  var a = false;

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController typek=TextEditingController();
  var sk=0;

  Future<void> sendDataToServer() async {
    String url = 'http://localhost:4040/flutters/rigister.php';
    String name = user.text;
    String password = pass.text;

    try {
      var response = await http.post(Uri.parse(url), body: {
        'name': name,
        'password': password,
      });

      if (response.statusCode == 200) {
        sk==1;
        print('Data sent successfully');
        print('Response: ${response.body}');
      } else {
        
        print('Failed to send data. Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error sending data: $e');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Now"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        padding: EdgeInsets.all(80),
        decoration: BoxDecoration(
          color: Colors.cyan,
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(30),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 50, 10, 0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Set color directly onclick the button
                        a = true;
                      },
                      child: Text('admin'),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        u = true;
                      },
                      child: Text('user'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: user,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email Id',
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangePassword()));
                },
                child: Container(
                  child: Text(
                    'forgot password?',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 24, 136, 228)),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => sign()));
                },
                child: Container(
                  child: Text(
                    'New user',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 24, 136, 228)),
                  ),
                ),
              ),
              ElevatedButton(
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                onPressed: () {
                 sendDataToServer();
                  if (a == true && sk==1) {
                    print("admin");

                    // Replace homepage() with your desired widget
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                        
                        
                    a = false;
                    
                  } else if (u == true) {
                    print('user');
                    // Replace Sdash() with your desired widget
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sdash()));
                        sendDataToServer();
                    u = false;
                  } else {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
