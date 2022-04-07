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
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Text(
            button,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: charSize,
              ),
            ),
          ),
          color: buttonColor,
          textColor: charColor,
          onPressed: () {
            eventPress(button);
          },
        ),
      ),
    );
  }
}
