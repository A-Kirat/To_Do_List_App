import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'checkBox.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final textController = TextEditingController();
  // Add any state variables here
  List<Widget> checkboxes = [];
  String UserTask = "Hi";

  // This method is called whenever you want to update the state

  void addcheckbox() {
    checkboxes.add(LabeledCheckbox(label: "$UserTask"));
    checkboxes.add(
      SizedBox(height: 30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcfd8cb),
      appBar: AppBar(
      
        title: Text(
          "The Best To-Do List App",
          style: GoogleFonts.lato(
            fontSize: 20.0, // Adjust the font size
            fontWeight: FontWeight.bold, // Optional: Set font weight
            color: Color(0xff1F6C54), // Change the text color
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff9eccb5),
      ),
      body: Container(
          margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: 
          SingleChildScrollView(
            child :Column(
            children: checkboxes,
          )
          ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff9eccb5),
        child: TextField(
          controller: textController,
          decoration: InputDecoration(
            hintText: "what is on your mind?",
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                UserTask = textController.text;
                textController.clear();
                setState(() {
                  addcheckbox();
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
