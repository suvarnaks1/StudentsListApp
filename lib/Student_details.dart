import 'package:flutter/material.dart';

import 'homepage.dart';

class StudentDetailPage extends StatelessWidget {
  List<Map<String, dynamic>> students;
  int index;
  StudentDetailPage({Key? key, required this.index, required this.students})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90.0),
              bottomRight: Radius.circular(90.0),
            ),
            color: Color.fromARGB(255, 1, 96, 174),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(5, 5),
                  blurRadius: 10)
            ]),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(5, 5),
                          blurRadius: 10)
                    ],
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Text(
                  "My Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      size: 29,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/student.png',
                    ),
                    backgroundColor:
                        Colors.grey, // Transparent background for circle avatar
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    students[index]['name'],
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 29),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 29,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Column(
              children: [Text("Roll Number",style: TextStyle(fontSize: 20),), 
              Text(
                  students[index]['roleNumber'],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 29),
                )
              ]
            ),
          ),
          SizedBox(width: 20,),
          SizedBox(
            child: Column(
              children: [Text("Age",style: TextStyle(fontSize: 20),), 
              Text(
                  students[index]['age'].toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 29),
                ),
              
              ]
              
            ),
          ),
        ],
      ),
        SizedBox(height: 45,),
         Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Column(
              children: [Text("School Name",style: TextStyle(fontSize: 20),), 
              Text(
                  students[index]['schoolName'],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 29),
                )
              ]
            ),
          ),
          SizedBox(width: 20,),
          SizedBox(
            child: Column(
              children: [Text("Place",style: TextStyle(fontSize: 20),), 
              Text(
                  students[index]['place'].toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 29),
                ),
              
              ]
              
            ),
          ),
        ],
      ),
         SizedBox(height: 45,),
       Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Column(
              children: [Text("Subject",style: TextStyle(fontSize: 20),), 
              Text(
                  students[index]['subject'],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 29),
                )
              ]
            ),
          ),
          
         
        ],
      ),
      SizedBox(height: 20,),
      SizedBox(child: Image.asset('assets/graduation.png',height: 100,width: 100,),)
    ]
    )
    ),
   
    );
  }
}
