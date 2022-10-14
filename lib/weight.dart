// ignore_for_file: camel_case_types, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:wighttrial/settings.dart';
import 'package:wighttrial/signUpPage.dart';

class weight extends StatefulWidget {
  const weight({super.key});

  @override
  State<weight> createState() => _weightState();
}

class _weightState extends State<weight> {
  int _retrievedweight = 0;
  int _currentValue = 50;
  int _decimalValue = 0;
  int _pressed = 0;
  double _width = 85;
  double _height = 0;
  Color _color = const Color(0xffF2F2F2);

  _updateState() {
    setState(
      () {
        _width = 130;
        _height = 200;
        _color = const Color.fromARGB(15, 69, 82, 116);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 26.0,
                      top: 15.0,
                      bottom: 7,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const signUpPage(),
                          ),
                        );
                      },
                      child: const Image(
                        image: AssetImage('images/Vector.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        '$_retrievedweight kg',
                        style: GoogleFonts.openSans(
                          fontSize: 40,
                          color: const Color.fromARGB(255, 69, 82, 116),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Is your current weight',
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: const Color.fromARGB(255, 69, 82, 116),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 15.0,
                          left: 15.0,
                        ),
                        child: Container(
                          height: 160,
                          alignment: Alignment.centerLeft,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(15, 0, 0, 0),
                                blurRadius: 9,
                                offset: Offset(-10, 8),
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 185,
                                child: AnimatedContainer(
                                  duration: const Duration(
                                    milliseconds: 400,
                                  ),
                                  curve: Curves.easeInOut,
                                  width: _width,
                                  height: _height,
                                  color: _color,
                                ),
                              ),
                              if (_pressed == 1)
                                const Positioned(
                                  left: 190,
                                  top: 25,
                                  child: Text('_____'),
                                ),
                              if (_pressed == 1)
                                const Positioned(
                                  left: 255,
                                  top: 25,
                                  child: Text('____'),
                                ),
                              if (_pressed == 1)
                                const Positioned(
                                  left: 255,
                                  top: 90,
                                  child: Text('____'),
                                ),
                              if (_pressed == 1)
                                const Positioned(
                                  left: 190,
                                  top: 90,
                                  child: Text('_____'),
                                ),
                              Positioned(
                                top: 65,
                                left: 240,
                                child: Text(
                                  '.         kg',
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    color:
                                        const Color.fromARGB(255, 69, 82, 116),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 50,
                                left: 15,
                                child: Text(
                                  '$_retrievedweight kg',
                                  style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    color:
                                        const Color.fromARGB(255, 69, 82, 116),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 85,
                                left: 15,
                                child: Text(
                                  'Current weight',
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    color:
                                        const Color.fromARGB(255, 69, 82, 116),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 45,
                                left: 140,
                                child: Text(
                                  'Goal',
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    color:
                                        const Color.fromARGB(255, 69, 82, 116),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 70,
                                left: 150,
                                child: Image(
                                  image:
                                      AssetImage('images/VectorightArrowr.png'),
                                ),
                              ),
                              if (_pressed == 1)
                                Positioned(
                                  left: 160,
                                  child: NumberPicker(
                                    value: _currentValue,
                                    minValue: 0,
                                    maxValue: 100,
                                    onChanged: (value) =>
                                        setState(() => _currentValue = value),
                                  ),
                                ),
                              if (_pressed == 1)
                                Positioned(
                                  left: 220,
                                  child: NumberPicker(
                                    value: _decimalValue,
                                    minValue: 0,
                                    maxValue: 9,
                                    onChanged: (value) =>
                                        setState(() => _decimalValue = value),
                                  ),
                                ),
                              if (_pressed == 0)
                                Positioned(
                                  top: 50,
                                  left: 220,
                                  child: ElevatedButton(
                                    onPressed: () => setState(() {
                                      _pressed = 1;
                                      _updateState();
                                    }),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: const Color.fromARGB(
                                          255, 69, 82, 116),
                                      elevation: 0.0,
                                      textStyle: GoogleFonts.openSans(
                                        fontSize: 25,
                                      ),
                                      shape: const CircleBorder(),
                                    ),
                                    child: Text(
                                      _currentValue.toString(),
                                    ),
                                  ),
                                ),
                              const Positioned(
                                top: 120,
                                left: 335,
                                child: Image(
                                  image: AssetImage('images/VectorDown.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const settings(),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 69, 82, 116),
                          ),
                        ),
                        child: const Icon(Icons.settings),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
