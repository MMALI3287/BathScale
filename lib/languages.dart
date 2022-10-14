import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wighttrial/settings.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Align(
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
                          builder: (BuildContext context) => const settings(),
                        ),
                      );
                    },
                    child: const Image(
                      image: AssetImage('images/Vector.png'),
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 10.0,
                      top: 20.0,
                      bottom: 7,
                    ),
                    child: Container(
                      height: 675,
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
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 35.0,
                          top: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bengali",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "English",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Hindi",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Japanese",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Mandarin Chinese",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Marathi",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Portuguese",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Russian",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Spanish",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Vietnamese",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Western Punjabi",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Yue Chinese",
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
                    top: 60,
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
                    top: 112,
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
                    top: 164,
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
                    top: 216,
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
                    top: 268,
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
                    top: 320,
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
                    top: 375,
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
                    top: 427,
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
                    top: 480,
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
                    top: 533,
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
                    top: 586,
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
                    top: 640,
                    left: 55,
                    child: Text(
                      '________________________________________',
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        color: const Color.fromARGB(88, 189, 181, 181),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
