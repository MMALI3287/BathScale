import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:wighttrial/settings.dart';
import 'package:flutter/cupertino.dart';

class Reminder extends StatefulWidget {
  const Reminder({super.key});

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
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
                              "Time1",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Text(
                              "Time2",
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
                    top: 40,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        // shadowColor: Color(0x0AFFFFFF),
                      ),
                      child: const Icon(
                        CupertinoIcons.clock,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 97,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        //shadowColor: Color.fromARGB(79, 179, 179, 179),
                      ),
                      child: const Icon(
                        CupertinoIcons.clock,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 300,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        // primary: Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        //shadowColor: Color.fromARGB(79, 179, 179, 179),
                      ),
                      child: const Icon(
                        // CupertinoIcons.add,
                        Icons.add,
                        color: Color(0xFF455274),
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
