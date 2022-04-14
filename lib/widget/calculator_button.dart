import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String button;
  final Color buttonColor;
  final Color charColor;
  final double charSize;
  final Function eventPress;

  const CalculatorButton({
    Key? key,
    this.button = '',
    this.buttonColor = const Color(0x00FFFFFF),
    this.charColor = const Color(0x00000000),
    this.charSize = 40,
    required this.eventPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: SizedBox(
        width: 75,
        height: 75,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            backgroundColor: buttonColor,
            primary: charColor,
          ),
          child: Text(
            button,
            style: GoogleFonts.ubuntu(
              textStyle: TextStyle(
                fontSize: charSize,
              ),
            ),
          ),
          onPressed: () {
            eventPress(button);
          },
        ),
      ),
    );
  }
}
