// home_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mainPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Add any state variables here
  String _message = "\"Small steps every day lead to big achievements over time.\"";

  // This method is called whenever you want to update the state
  void _updateMessage() {
    setState(() {
    print('You pressed the button!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcfd8cb),
      appBar: AppBar(
        title: Text(
            "The Best To-Do List App ",
            style:
             GoogleFonts.lato(
              fontSize: 20.0, // Adjust the font size
              fontWeight: FontWeight.bold, // Optional: Set font weight
              color: Color(0xff1F6C54), // Change the text color
              
            ),
              ),
        centerTitle: true,
        backgroundColor: Color(0xff9eccb5	),

      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
           Image(
            image: AssetImage('Images/image-removebg-preview (10).png'),
            width: 250,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 0),
            
            Center(
            child: Container(
              
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(10,20,10,20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffffe4e1),
                boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), // Shadow color with some opacity
        spreadRadius: 5, // Spread radius
        blurRadius: 7, // Blur radius
        offset: Offset(0, 3), // Offset the shadow
      ),
    ],
              ),
            
            child: Text(
              textAlign: TextAlign.center,
              _message,
                style:
             GoogleFonts.aclonica(
              fontSize: 40.0, // Adjust the font size
              fontWeight: FontWeight.bold, 
              fontStyle: FontStyle.italic,// Optional: Set font weight
              color: Color(0xff1F6C54), // Change the text color
              
            ),
            ),
            ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffffe4e1),
                shadowColor: Colors.black,
                
                ),
            
              
              onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondScreen()),
        );
      },
              child: Text('Click Here To Start',
              style: TextStyle(
                color: Color(0xff1F6C54),
                fontWeight:FontWeight.bold,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
              
              
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
