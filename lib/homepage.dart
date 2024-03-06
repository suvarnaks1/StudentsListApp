import 'package:flutter/material.dart';
import 'Student_details.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

 
  // Sample list of student details
  final List<Map<String, dynamic>> students = [
    {
      'name': 'Suvarna ks',
      'age': 20,
      'roleNumber': 'A123',
      'schoolName': 'ABC School',
      'place': 'City A',
      'subject':'History'
    },
    {
      'name': 'Sandra ks',
      'age': 21,
      'roleNumber': 'B456',
      'schoolName': 'XYZ School',
      'place': 'City B',
       'subject':'Biology'
    },
     {
      'name': 'Shweta ',
      'age': 24,
      'roleNumber': 'A123',
      'schoolName': 'AFF School',
      'place': 'City AR',
      'subject':'Malayalam'
    }, {
      'name': 'Gopika ',
      'age': 25,
      'roleNumber': 'A123',
      'schoolName': 'Edapt',
      'place': 'City AB',
      'subject':'English'
    }, {
      'name': 'Hari',
      'age': 20,
      'roleNumber': 'A123',
      'schoolName': 'AI School',
      'place': 'City CD',
      'subject':'Biology'
    },
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Student Names')),
        backgroundColor: Colors.blue, 
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to a new page 
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentDetailPage(students: students,index: index,),
                ),
              );
            },
            child: Container(
              height: 150,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), 
                    offset: const Offset(5, 5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Card(
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/student.png',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(
                      students[index]['name'],
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
