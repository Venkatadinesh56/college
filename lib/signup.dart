import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample/main.dart';

class sign extends StatefulWidget {
  const sign({super.key});

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  var u = false;
  var a = false;

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  String selectedType = ''; // Added variable to store selected type

  Future<void> sendDataToServer() async {
    String url = 'http://192.168.160.83/our-college/rigister.php';
   
    String name = user.text;
    String password = pass.text;
    print(name);
    print(password);
    

 try {
  var response = await http.post(Uri.parse(url), body: {
    'name': name,
    'password': password,
    'typek': selectedType, // Pass selected type to 'typek' parameter
  });

  if (response.statusCode == 200) {
    print('Data sent successfully');
    print('Response: ${response.body}');
  } else {
    print('Failed to send data. Error code: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
} catch (e) {
  print('Error sending data: $e');
}


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup page"),
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
                        setState(() {
                          a = true;
                          selectedType = 'admin'; // Set selected type to admin
                        });
                      },
                      child: Text('admin'),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          u = true;
                          selectedType = 'user'; // Set selected type to user
                        });
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
              ElevatedButton(
                child: Text('signup'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                onPressed: () {
                  if (selectedType.isNotEmpty) { // Check if type is selected
                    sendDataToServer(); // Send data to server
                    // Navigate to Home screen after data sent
                  

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    // Show error message if type is not selected
                    print('Please select user type');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

