import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Student Profile"),
        backgroundColor: Colors.blue,
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            CircleAvatar(
              radius: 60,
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),

            SizedBox(height:20),

            Text(
              "Welcome Student",
              style: TextStyle(
                fontSize:25,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height:30),


            ElevatedButton(
              child: Text("Personal Details"),

              onPressed: (){

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context)=>DetailsScreen()
                    )
                );

              },
            ),


            ElevatedButton(
              child: Text("Academic Details"),

              onPressed: (){

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context)=>AcademicScreen()
                    )
                );

              },
            ),

          ],
        ),
      ),
    );
  }
}




class DetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Personal Details"),
      ),


      body: Padding(

        padding: EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "Name: Mohsin Khan",
              style: TextStyle(fontSize:22),
            ),

            SizedBox(height:15),


            Text(
              "Registration #: 	2024-FU-CS-58",
              style: TextStyle(fontSize:22),
            ),

            SizedBox(height:15),


            Text(
              "Semester: 4th",
              style: TextStyle(fontSize:22),
            ),


            Text(
              "Section: B",
              style: TextStyle(fontSize:22),
            ),

            SizedBox(height:15),
          ],
        ),
      ),
    );
  }
}





class AcademicScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Academic Details"),
      ),


      body: Padding(

        padding: EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "Course: Mobile Application Development",
              style: TextStyle(fontSize:22),
            ),

            SizedBox(height:20),


            Text(
              "Department: Computer Science",
              style: TextStyle(fontSize:22),
            ),

            SizedBox(height:20),


          ],
        ),
      ),
    );
  }
}