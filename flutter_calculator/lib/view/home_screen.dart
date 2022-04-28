import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _operation = 0;

  void _changeText(int t) {
    setState(() {
      _operation = t;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  padding:
                      const EdgeInsets.only(bottom: 200, top: 80, left: 180),
                  child: Text(
                    '$_operation',
                    style: const TextStyle(color: Colors.white, fontSize: 80),
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
          child: Column(children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: buttonDistX, vertical: buttonDistY),
                    child: FloatingActionButton(
                      backgroundColor: buttonColor,
                      onPressed: () => {},
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
                      onPressed: () => {},
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
                      onPressed: () => {},
                      child: Text(
                        '9',
                        style: keybStyle,
                      ),
                    )),
                SizedBox(
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text('+'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple)),
                    ))
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: buttonDistX, vertical: buttonDistY),
                    child: FloatingActionButton(
                      backgroundColor: buttonColor,
                      onPressed: () => {},
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
                      onPressed: () => {},
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
                      onPressed: () => {},
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
                      onPressed: () => {},
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
                      onPressed: () => {},
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
                      onPressed: () => {},
                      child: Text(
                        '3',
                        style: keybStyle,
                      ),
                    ))
              ],
            )
          ])),
    ));
  }
}
