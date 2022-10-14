// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wighttrial/weight.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 360,
            ),
            buildEmail(),
            const SizedBox(
              height: 15,
            ),
            buildConfirmBtn(context),
          ],
        ),
      ),
    );
  }
}

Widget buildEmail() {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 10.0,
          top: 20.0,
          bottom: 7,
        ),
        child: Container(
          height: 245,
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(10, 0, 0, 0),
                blurRadius: 10,
                offset: Offset(-10, 9),
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 35.0,
                      top: 40,
                    ),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(232, 69, 82, 116),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 35.0,
                        left: 45.0,
                        right: 15.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '____________________________',
                          hintStyle: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(74, 189, 181, 181),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 35.0,
                      top: 15.0,
                    ),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(233, 69, 82, 116),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15,
                        top: 10,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '____________________________',
                          hintStyle: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(74, 189, 181, 181),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 35.0,
                      top: 15.0,
                    ),
                    child: Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(232, 69, 82, 116),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15,
                        top: 10,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '______________________',
                          hintStyle: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(74, 189, 181, 181),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 55,
        left: -4,
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(8),
            //shadowColor: Color.fromARGB(79, 179, 179, 179),
          ),
          child: const Icon(
            Icons.email,
            color: Color(0xFF455274),
          ),
        ),
      ),
      Positioned(
        top: 115,
        left: -4,
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(8),
            //shadowColor: Color.fromARGB(79, 179, 179, 179),
          ),
          child: const Icon(
            Icons.lock,
            color: Color(0xFF455274),
          ),
        ),
      ),
      Positioned(
        top: 175,
        left: -4,
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(8),
            //shadowColor: Color.fromARGB(79, 179, 179, 179),
          ),
          child: const Icon(
            Icons.lock,
            color: Color(0xFF455274),
          ),
        ),
      ),
    ],
  );
}

Widget buildConfirmBtn(BuildContext context) {
  return SizedBox(
    width: 130,
    height: 50,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const weight(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shadowColor: const Color.fromARGB(150, 0, 0, 0),
      ),
      child: Text(
        'Confirm',
        style: GoogleFonts.openSans(
          color: const Color(0xFF455274),
          fontSize: 12.5,
        ),
      ),
    ),
  );
}
