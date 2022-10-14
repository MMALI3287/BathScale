// ignore_for_file: camel_case_types, deprecated_member_use, avoid_print

import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wighttrial/account.dart';
import 'package:wighttrial/changeUnit.dart';
import 'package:wighttrial/contact.dart';
import 'package:wighttrial/deleteAccount.dart';
import 'package:wighttrial/goals.dart';
import 'package:wighttrial/languages.dart';
import 'package:wighttrial/myConnectedDevices.dart';
import 'package:wighttrial/reminder.dart';
import 'package:wighttrial/setGoal.dart';
import 'package:wighttrial/weight.dart';

class settings extends StatefulWidget {
  const settings({super.key});
  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool status = false;

  get isDarkModeEnabled => false;

  set isDarkModeEnabled(isDarkModeEnabled) {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 250, 254),
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
                          builder: (BuildContext context) => const weight(),
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
                            color: Color.fromARGB(15, 0, 0, 0),
                            blurRadius: 9,
                            offset: Offset(-10, 8),
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
                              "Dark mode",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 38,
                            ),
                            Text(
                              "Change unit",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 38,
                            ),
                            Text(
                              "My connected devices",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 38,
                            ),
                            Text(
                              "Measurement Reminders",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 75,
                            ),
                            Text(
                              "Language",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 38,
                            ),
                            Text(
                              "About",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 38,
                            ),
                            Text(
                              "Delete Account",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 38,
                            ),
                            Text(
                              "Legal & Policies",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 38,
                            ),
                            Text(
                              "Contact Us",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: const Color.fromARGB(255, 69, 82, 116),
                              ),
                            ),
                            const SizedBox(
                              height: 38,
                            ),
                            Text(
                              "Logout",
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
                    top: 40,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.dark_mode,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 97,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.change_circle,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 154,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.devices_other,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 211,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 310,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.language,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 367,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.info,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 424,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.delete,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 481,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.shield,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 538,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.quick_contacts_mail,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 595,
                    left: -4,
                    child: ElevatedButton(
                      onPressed: () => print('Pressed'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        shadowColor: const Color.fromARGB(150, 0, 0, 0),
                      ),
                      child: const Icon(
                        Icons.logout_outlined,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 62,
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
                    top: 119,
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
                    top: 176,
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
                    top: 233,
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
                    top: 332,
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
                    top: 389,
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
                    top: 446,
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
                    top: 503,
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
                    top: 560,
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
                    top: 617,
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
                    top: 25,
                    left: 270,
                    child: DayNightSwitcher(
                      isDarkModeEnabled: isDarkModeEnabled,
                      onStateChanged: (isDarkModeEnabled) {
                        setState(
                          () {
                            this.isDarkModeEnabled = isDarkModeEnabled;
                          },
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 115,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChangeUnit(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 172,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyConnectedDevices(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 229,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Reminder(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 327,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Languages(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 384,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const settings(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 441,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DeleteAccount(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 498,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const settings(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 555,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Contact(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 612,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const settings(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 280,
                    left: 355,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Goals(),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('images/VectorRight.png'),
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
