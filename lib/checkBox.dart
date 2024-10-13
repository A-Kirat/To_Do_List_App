import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabeledCheckbox extends StatefulWidget {
  final String label;

  LabeledCheckbox({required this.label}); // Constructor that takes a string

  @override
  _LabeledCheckboxState createState() => _LabeledCheckboxState();
}

class _LabeledCheckboxState extends State<LabeledCheckbox> {
  bool _isChecked = false;
  Color Temp = Color(0xffffe4e1);

  @override
  Widget build(BuildContext context) {
    return (
      CheckboxListTile(
      title: Text(
        widget.label,
        style: GoogleFonts.averageSans(fontWeight: FontWeight.bold, fontSize:17, color: Color(0xff1F6C54)),
        
      ),

      value: _isChecked,
      onChanged: (bool? newValue) {
        setState(() {
          if (_isChecked) {
            Temp = Color(0xffffe4e1);
          }
          else{
            Temp = Color(0xff919191);

          }
          _isChecked = newValue ?? false;
        });
      },
      activeColor:
          Color(0xff1F6C54), // Changes the color of the checkbox when it's checked
      checkColor: Color(0xffffe4e1), // Changes the color of the checkmark
      tileColor: Temp,
      
      shape: RoundedRectangleBorder( // Customize the shape of the checkbox
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      controlAffinity: ListTileControlAffinity
          .leading, // This makes the checkbox appear before the label.
    )
    );
  }
}
