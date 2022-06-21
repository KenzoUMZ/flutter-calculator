import 'package:flutter/material.dart';
import 'package:flutter_calculator/controller/calculator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _operation = '';
  String _result = '';
  bool empty = false;
  final backgroundGradient = <Color>[
    const Color.fromRGBO(15, 15, 17, 1.0),
    const Color.fromRGBO(19, 19, 23, 1.0),
    const Color.fromRGBO(24, 24, 28, 1.0),
    const Color.fromRGBO(28, 29, 33, 1.0),
    const Color.fromRGBO(39, 39, 43, 1.0),
  ];
  final operationGradient = <Color>[
    const Color.fromRGBO(64, 158, 248, 1.0),
    const Color.fromRGBO(34, 201, 252, 1.0),
    const Color.fromRGBO(51, 236, 223, 1.0),
    const Color.fromRGBO(40, 252, 171, 1.0),
    const Color.fromRGBO(39, 248, 125, 1.0),
  ];

  void _changeText(String t) {
    setState(() {
      _operation += t;
    });
  }

  void _cleanDisplay() {
    setState(() {
      _operation = '';
      _result = '';
    });
  }

  void _changeResult(String t) {
    setState(() {
      _result = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextStyle displayStyle =
        GoogleFonts.montserrat(fontSize: 50, color: Colors.white);
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: backgroundGradient)),
          child: Column(
            children: [
              SizedBox(
                  height: 150,
                  child: Container(
                      padding: const EdgeInsets.only(
                        bottom: 50,
                        top: 20,
                      ),
                      child: Container(
                          padding: const EdgeInsets.only(right: 10, top: 30),
                          child: AutoSizeText(
                            _operation,
                            style: displayStyle,
                            maxLines: 1,
                            minFontSize: 20,
                            textAlign: TextAlign.right,
                          )))),
              SizedBox(
                  height: 150,
                  child: Container(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: AutoSizeText(
                        _result,
                        style: displayStyle,
                        maxLines: 1,
                        minFontSize: 20,
                      ))),
              Row(children: [
                Column(children: [
                  Row(
                    children: [
                      topButtons(),
                    ],
                  ),
                  Row(
                    children: [
                      numPad(),
                    ],
                  ),
                ]),
                operationPanel()
              ])
            ],
          )),
    );
  }

  Widget operationPanel() {
    double buttonDistX = 15;
    double buttonDistY = 12;
    Color buttonTextColor = Colors.black;
    TextStyle keyboardStyle = GoogleFonts.roboto(
        color: buttonTextColor, fontSize: 40, fontWeight: FontWeight.w300);
    Calculator calculator = Calculator();

    return Container(
      padding: EdgeInsets.only(bottom: buttonDistY),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: <Color>[
                Color.fromRGBO(64, 158, 248, 1.0),
                Color.fromRGBO(34, 201, 252, 1.0),
                Color.fromRGBO(51, 236, 223, 1.0),
                Color.fromRGBO(40, 252, 171, 1.0),
                Color.fromRGBO(39, 248, 125, 1.0),
              ])),
      child: Column(children: [
        Container(
            padding: EdgeInsets.symmetric(
                vertical: buttonDistY, horizontal: buttonDistX),
            child: TextButton(
                onPressed: () => _changeText('/'),
                child: Text(
                  '÷',
                  style: keyboardStyle,
                ))),
        Container(
            padding: EdgeInsets.symmetric(
                vertical: buttonDistY, horizontal: buttonDistX),
            child: TextButton(
                onPressed: () => _changeText('*'),
                child: Text(
                  '×',
                  style: keyboardStyle,
                ))),
        Container(
            padding: EdgeInsets.symmetric(
                vertical: buttonDistY, horizontal: buttonDistX),
            child: TextButton(
                onPressed: () => _changeText('-'),
                child: Text(
                  '﹣',
                  style: keyboardStyle,
                ))),
        Container(
            padding: EdgeInsets.symmetric(
                vertical: buttonDistY, horizontal: buttonDistX),
            child: TextButton(
                onPressed: () => _changeText('+'),
                child: Text(
                  '+',
                  style: keyboardStyle,
                ))),
        Container(
            padding: EdgeInsets.symmetric(
                vertical: buttonDistY, horizontal: buttonDistX),
            child: TextButton(
                onPressed: () {
                  calculator.text = _operation;
                  _changeResult(calculator.calculate().toString());
                },
                child: Text(
                  '=',
                  style: keyboardStyle,
                )))
      ]),
    );
  }

  Widget topButtons() {
    double buttonDistX = 15;
    double buttonDistY = 15;
    Color buttonTextColor = Colors.white;
    TextStyle keyboardStyle = GoogleFonts.roboto(
        color: buttonTextColor, fontSize: 40, fontWeight: FontWeight.w100);

    return Row(
      children: [
        Container(
            padding: EdgeInsets.symmetric(
                vertical: buttonDistY, horizontal: buttonDistX),
            child: TextButton(
                onPressed: () => _cleanDisplay(),
                child: Text(
                  'AC',
                  style: keyboardStyle,
                ))),
        Container(
            padding: EdgeInsets.symmetric(
                vertical: buttonDistY, horizontal: buttonDistX),
            child: TextButton(
                onPressed: () => _cleanDisplay(),
                child: Text(
                  '±',
                  style: keyboardStyle,
                ))),
        Container(
            padding: EdgeInsets.symmetric(
                vertical: buttonDistY, horizontal: buttonDistX),
            child: TextButton(
                onPressed: () => _cleanDisplay(),
                child: Text(
                  '%',
                  style: keyboardStyle,
                )))
      ],
    );
  }

  Widget numPad() {
    double buttonDistX = 15;
    double buttonDistY = 15;
    Color buttonTextColor = Colors.white;
    TextStyle keyboardStyle = GoogleFonts.roboto(
        color: buttonTextColor, fontSize: 40, fontWeight: FontWeight.w100);

    List<String> numbers = [
      '7',
      '8',
      '9',
      '4',
      '5',
      '6',
      '1',
      '2',
      '3',
      '0',
      ','
    ];
    return Column(
      children: [
        Row(
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: buttonDistY, horizontal: buttonDistX),
                child: TextButton(
                    onPressed: () => _changeText(numbers[0]),
                    child: Text(
                      numbers[0],
                      style: keyboardStyle,
                    ))),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: buttonDistY, horizontal: buttonDistX),
                child: TextButton(
                    onPressed: () => _changeText(numbers[1]),
                    child: Text(
                      numbers[1],
                      style: keyboardStyle,
                    ))),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: buttonDistY, horizontal: buttonDistX),
                child: TextButton(
                    onPressed: () => _changeText(numbers[2]),
                    child: Text(
                      numbers[2],
                      style: keyboardStyle,
                    )))
          ],
        ),
        Row(
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: buttonDistY, horizontal: buttonDistX),
                child: TextButton(
                    onPressed: () => _changeText(numbers[3]),
                    child: Text(
                      numbers[3],
                      style: keyboardStyle,
                    ))),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: buttonDistY, horizontal: buttonDistX),
                child: TextButton(
                    onPressed: () => _changeText(numbers[4]),
                    child: Text(
                      numbers[4],
                      style: keyboardStyle,
                    ))),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: buttonDistY, horizontal: buttonDistX),
                child: TextButton(
                    onPressed: () => _changeText(numbers[5]),
                    child: Text(
                      numbers[5],
                      style: keyboardStyle,
                    )))
          ],
        ),
        Row(
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: buttonDistY, horizontal: buttonDistX),
                child: TextButton(
                    onPressed: () => _changeText(numbers[6]),
                    child: Text(
                      numbers[6],
                      style: keyboardStyle,
                    ))),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: buttonDistY, horizontal: buttonDistX),
                child: TextButton(
                    onPressed: () => _changeText(numbers[7]),
                    child: Text(
                      numbers[7],
                      style: keyboardStyle,
                    ))),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: buttonDistY, horizontal: buttonDistX),
                child: TextButton(
                    onPressed: () => _changeText(numbers[8]),
                    child: Text(
                      numbers[8],
                      style: keyboardStyle,
                    ))),
          ],
        ),
        Row(
          children: [
            Container(
                padding: EdgeInsets.only(top: buttonDistY, right: 120),
                child: TextButton(
                    onPressed: () => _changeText(numbers[9]),
                    child: Text(
                      numbers[9],
                      style: keyboardStyle,
                    ))),
            Container(
                padding: EdgeInsets.only(top: buttonDistY),
                child: TextButton(
                    onPressed: () => _changeText(numbers[10]),
                    child: Text(
                      numbers[10],
                      style: keyboardStyle,
                    )))
          ],
        )
      ],
    );
  }
}
