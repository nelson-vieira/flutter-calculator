import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widget/CalculatorButton.dart';

void main() {
  runApp(const FlutterCalculator());
}

class FlutterCalculator extends StatefulWidget {
  const FlutterCalculator({Key? key}) : super(key: key);

  @override
  _FlutterCalculatorState createState() => _FlutterCalculatorState();
}

class _FlutterCalculatorState extends State<FlutterCalculator> {
  String history = '';
  String operation = '';

  void buttonPressed(String button) {
    setState(() => operation += button);
  }

  void clearOperation(String button) {
    setState(() {
      operation = '';
    });
  }

  void clearEverything(String button) {
    setState(() {
      history = '';
      operation = '';
    });
  }

  void calculation(String button) {
    Parser parser = Parser();
    Expression expression = parser.parse(operation);
    ContextModel contextmodel = ContextModel();

    setState(() {
      history = operation;
      operation =
          expression.evaluate(EvaluationType.REAL, contextmodel).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        color: Color(0x66FFFFFF),
                      ),
                    ),
                  ),
                ),
                alignment: const Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    operation,
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 70,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                alignment: const Alignment(1.0, 1.0),
              ),
              const Divider(
                color: Color(0xFFABABAB),
                height: 1,
                thickness: 1,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatorButton(
                    button: 'AC',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFDB1C1C),
                    charSize: 30,
                    eventPress: clearEverything,
                  ),
                  CalculatorButton(
                    button: 'C',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFDB1C1C),
                    eventPress: clearOperation,
                  ),
                  CalculatorButton(
                    button: '%',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFF3ABF15),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '/',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFF3ABF15),
                    eventPress: buttonPressed,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    button: '7',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '8',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '9',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '*',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFF3ABF15),
                    eventPress: buttonPressed,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    button: '4',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '5',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '6',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '-',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFF3ABF15),
                    eventPress: buttonPressed,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    button: '1',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '2',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '3',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '+',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFF3ABF15),
                    eventPress: buttonPressed,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    button: '0',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '00',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    charSize: 30,
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '.',
                    buttonColor: const Color(0x80414141),
                    charColor: const Color(0xFFFFFFFF),
                    eventPress: buttonPressed,
                  ),
                  CalculatorButton(
                    button: '=',
                    buttonColor: const Color(0xFF3ABF15),
                    charColor: const Color(0xFF141414),
                    eventPress: calculation,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
