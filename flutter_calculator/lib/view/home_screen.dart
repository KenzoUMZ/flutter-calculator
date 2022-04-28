import 'package:flutter/material.dart';
import 'package:flutter_calculator/controller/calculator.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _operation = '';
  String _result = '';
  bool empty = false;
  void _changeText(String t) {
    setState(() {
      _operation += t;
      if (_operation.length == 7) {
        _cleanDisplay();
      }
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
        GoogleFonts.montserrat(fontSize: 80, color: Colors.white);
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[Colors.deepPurple, Colors.purple.shade700])),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(
                    bottom: 50,
                    top: 20,
                  ),
                  child: Text(
                    _operation,
                    style: displayStyle,
                    textAlign: TextAlign.right,
                  )),
              Container(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Text(
                    _result,
                    style: displayStyle,
                  )),
              numpadBuilder()
            ],
          )),
    );
  }

  Container numpadBuilder() {
    double buttonDistX = 10;
    double buttonDistY = 10;
    Color buttonColor = Colors.deepPurple;
    Color buttonTextColor = Colors.white;
    TextStyle keybStyle =
        GoogleFonts.baloo2(color: buttonTextColor, fontSize: 20);
    Calculator calculator = Calculator();
    GoogleFonts.baloo2(color: buttonTextColor, fontSize: 20);
    return Container(
        child: Expanded(
      child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.deepPurple.shade900, blurRadius: 80)
              ],
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[Colors.deepPurple.shade900, Colors.purple])),
          child: Row(children: [
            Column(children: [
              Container(
                  padding:
                      const EdgeInsets.only(top: 10, bottom: 10, right: 65),
                  child: SizedBox(
                      height: 60,
                      width: 110,
                      child: ElevatedButton(
                        onPressed: () => {_cleanDisplay()},
                        child: Text(
                          'AC',
                          style: keybStyle,
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.purpleAccent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                      ))),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonDistX, vertical: buttonDistY),
                      child: FloatingActionButton(
                        backgroundColor: buttonColor,
                        onPressed: () => {_changeText('7')},
                        child: Text(
                          '7',
                          style: keybStyle,
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonDistX, vertical: buttonDistY),
                      child: FloatingActionButton(
                        backgroundColor: buttonColor,
                        onPressed: () => {_changeText('8')},
                        child: Text(
                          '8',
                          style: keybStyle,
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonDistX, vertical: buttonDistY),
                      child: FloatingActionButton(
                        backgroundColor: buttonColor,
                        onPressed: () => {_changeText('9')},
                        child: Text(
                          '9',
                          style: keybStyle,
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonDistX, vertical: buttonDistY),
                      child: FloatingActionButton(
                        backgroundColor: buttonColor,
                        onPressed: () => {_changeText('4')},
                        child: Text(
                          '4',
                          style: keybStyle,
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonDistX, vertical: buttonDistY),
                      child: FloatingActionButton(
                        backgroundColor: buttonColor,
                        onPressed: () => {_changeText('5')},
                        child: Text(
                          '5',
                          style: keybStyle,
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonDistX, vertical: buttonDistY),
                      child: FloatingActionButton(
                        backgroundColor: buttonColor,
                        onPressed: () => {_changeText('6')},
                        child: Text(
                          '6',
                          style: keybStyle,
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonDistX, vertical: buttonDistY),
                      child: FloatingActionButton(
                        backgroundColor: buttonColor,
                        onPressed: () => {_changeText('1')},
                        child: Text(
                          '1',
                          style: keybStyle,
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonDistX, vertical: buttonDistY),
                      child: FloatingActionButton(
                        backgroundColor: buttonColor,
                        onPressed: () => {_changeText('2')},
                        child: Text(
                          '2',
                          style: keybStyle,
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: buttonDistX, vertical: buttonDistY),
                      child: FloatingActionButton(
                        backgroundColor: buttonColor,
                        onPressed: () => {_changeText('3')},
                        child: Text(
                          '3',
                          style: keybStyle,
                        ),
                      )),
                ],
              ),
              Row(children: [
                Container(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: SizedBox(
                        height: 60,
                        width: 110,
                        child: ElevatedButton(
                          onPressed: () => {_changeText('0')},
                          child: Text(
                            '0',
                            style: keybStyle,
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(buttonColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        ))),
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                        height: 60,
                        width: 70,
                        child: ElevatedButton(
                          onPressed: () => {_changeText('.')},
                          child: Text(','),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(buttonColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        )))
              ])
            ]),
            Container(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 10),
                child: Column(
                  children: [
                    SizedBox(
                        height: 150,
                        width: 80,
                        child: ElevatedButton(
                          onPressed: () => {_changeText('+')},
                          child: Text('+'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.purpleAccent),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        )),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              onPressed: () => {_changeText('-')},
                              child: Text('-'),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.purpleAccent),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                            ))),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                            width: 80,
                            child: ElevatedButton(
                              onPressed: () => {_changeText('*')},
                              child: Text('X'),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.purpleAccent),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                            ))),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                            width: 80,
                            child: ElevatedButton(
                              onPressed: () => {_changeText('/')},
                              child: Text('/'),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.purpleAccent),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                            ))),
                    SizedBox(
                        width: 80,
                        child: ElevatedButton(
                          onPressed: () => {
                            calculator.text = _operation,
                            _changeResult(calculator.calculate().toString()),
                          },
                          child: Text('='),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.purple),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        ))
                  ],
                ))
          ])),
    ));
  }
}
