// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wighttrial/settings.dart';

class ChangeUnit extends StatefulWidget {
  const ChangeUnit({super.key});
  @override
  State<ChangeUnit> createState() => _ChangeUnitState();
}

class _ChangeUnitState extends State<ChangeUnit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(54, 136, 130, 130),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
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
                                  const settings(),
                            ),
                          );
                        },
                        child: const Image(
                          image: AssetImage('images/Vector.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 10.0,
                    top: 465.0,
                    bottom: 10,
                  ),
                  child: Container(
                    height: 265,
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
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 35.0,
                        top: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Weigh unit",
                            style: GoogleFonts.openSans(
                              fontSize: 13,
                              color: const Color.fromARGB(255, 69, 82, 116),
                            ),
                          ),
                          const SizedBox(
                            height: 38,
                          ),
                          Text(
                            "Length unit",
                            style: GoogleFonts.openSans(
                              fontSize: 13,
                              color: const Color.fromARGB(255, 69, 82, 116),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 460,
                  left: -4,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(8),
                      shadowColor: const Color.fromARGB(79, 255, 255, 255),
                    ),
                    child: const Icon(
                      Icons.local_dining,
                      color: Color(0xFF455274),
                    ),
                  ),
                ),
                Positioned(
                  top: 518,
                  left: -4,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(8),
                      shadowColor: const Color.fromARGB(255, 250, 248, 248),
                    ),
                    child: const Icon(
                      Icons.line_weight,
                      color: Color(0xFF455274),
                    ),
                  ),
                ),
                Positioned(
                  top: 485,
                  left: 55,
                  child: Text(
                    '________________________________________',
                    style: GoogleFonts.openSans(
                      fontSize: 15,
                      color: const Color.fromARGB(88, 189, 181, 181),
                    ),
                  ),
                ),
                Positioned(
                  top: 543,
                  left: 55,
                  child: Text(
                    '________________________________________',
                    style: GoogleFonts.openSans(
                      fontSize: 15,
                      color: const Color.fromARGB(88, 189, 181, 181),
                    ),
                  ),
                ),
                const Positioned(
                  top: 480,
                  left: 355,
                  child: Image(
                    image: AssetImage('images/VectorRight.png'),
                  ),
                ),
                const Positioned(
                  top: 533,
                  left: 355,
                  child: Image(
                    image: AssetImage('images/VectorRight.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
