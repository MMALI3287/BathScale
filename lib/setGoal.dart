// ignore_for_file: prefer_final_fields, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wighttrial/signUpPage.dart';

class SetGoal extends StatefulWidget {
  const SetGoal({super.key});

  @override
  State<SetGoal> createState() => _SetGoalState();
}

class _SetGoalState extends State<SetGoal> {
  int _currentValue = 50;
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
                        '$_currentValue kg',
                        style: GoogleFonts.openSans(
                          fontSize: 40,
                          color: const Color(0xff455274),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Is your current weight',
                        style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: const Color(0xff455274),
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
                          height: 200,
                          alignment: Alignment.centerLeft,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(64, 0, 0, 0),
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 45,
                                left: 140,
                                child: Text(
                                  'Set Your Goal',
                                  style: GoogleFonts.openSans(
                                    fontSize: 13,
                                    color: const Color(0xff455274),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 153,
                                left: 308,
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(10),
                                    shadowColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Color(0xFF455274),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
