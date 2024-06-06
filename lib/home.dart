import 'package:flutter/material.dart';
import 'package:sample/adminstudents.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("College Name"),
        backgroundColor: Colors.pink,
        centerTitle: true,
        
      ),
      body: 
     Column(children: [
        Container(
         decoration:BoxDecoration(border: Border.all(width: 5)),
           padding: EdgeInsets.fromLTRB(20, 5,0,0),
           
           height: 100,
          
       
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
         CircleAvatar(
               radius: 40,
              backgroundColor: Colors.green,
              
              child: Icon(Icons.person,size: 30,),
              
            
            ),
            Padding(padding:EdgeInsets.all(10),
            child:
                Column(children: [
                  
                  Text("Super Admin Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26.0),),
                 
                  Text("Designation",style: TextStyle(fontSize: 19.0),),
                ],),
            ),
        
        
      ]),
      
      ),
       SizedBox(height: 20,),
      Container(
        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
        
        child: Column(children: [
        
          Row(children: [
       
            // Column(children: [
            //   CircleAvatar(
            //    radius: 40,
            //   backgroundColor: Colors.orange,
              
            //   child: Icon(Icons.currency_rupee,size: 30,),
            
              
            
            // ),
            // Text('''   Current Payment   ''')
            // ],),
            // Column(children: [
            //   CircleAvatar(
            //    radius: 40,
            //   backgroundColor: Colors.purple,
              
            //   child: Icon(Icons.currency_rupee,size: 30,),
            
              
            
            // ),
            // Text('''   Expenditure   ''')
            // ],),
         
            Column(children: [
              CircleAvatar(
               radius: 40,
              backgroundColor: Colors.blue,
              
              child: Icon(Icons.people_rounded,size: 30,),
            
              
            
            ),
            Text('''        Employess        ''')
            ],),
            
         
        
          
      
                   Column(children: [
              CircleAvatar(
               
               radius: 40,
              backgroundColor: Colors.pinkAccent,
              
             child: IconButton(icon: Icon(Icons.groups_3_rounded,size: 30,),onPressed: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>admst()));

             },),
           
        
            
            ),
              Text('''    Students    '''),
            ],),
      
     
            Column(children: [
              CircleAvatar(
               radius: 40,
              backgroundColor: Colors.greenAccent,
              
              child: Icon(Icons.notification_add,size: 30,),
            
              
            
            ),
            Text('''        Notifications        ''')
            ],),
          ],),
          SizedBox(height:10,),
          Row(children: [
            Column(children: [
              CircleAvatar(
               radius: 40,
              backgroundColor: Colors.purple,
              
              child: Icon(Icons.inventory_outlined,size: 30,),
            
              
            
            ),

            Text('''        Attendance        ''')
            ],),
            
          
        
          
       
            Column(children: [
              CircleAvatar(
               radius: 40,
              backgroundColor: Colors.pink,
              
              child: Icon(Icons.celebration,size: 30,),
            
              
            
            ),
            Text('''   Holidays   ''')
            ],),
            Column(children: [
              CircleAvatar(
               radius: 40,
              backgroundColor: Colors.pink,
              
              child: Icon(Icons.camera_alt_outlined,size: 30,),
            
              
            
            ),
            Text('''        Events/Gallery        ''')
            ],),
          ],),
            // Column(children: [
            //   CircleAvatar(
            //    radius: 40,
            //   backgroundColor: Colors.lightGreenAccent,
              
            //   child: Icon(Icons.inventory,size: 30,),
            
              
            
            // ),
            // Text('''          inventory          ''')
            // ],),
            
        
            SizedBox(height: 10,),
           Row(children: [
       
            Column(children: [
              CircleAvatar(
               radius: 40,
              backgroundColor: Colors.blueGrey,
              
              child: Icon(Icons.settings,size: 30,),
            
            ),
            Text('''           Settings           ''')
            ],),
            
         
           
            
          ],)
             
        ]),
      )
      ],)
    );
  }
}
