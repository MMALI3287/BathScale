import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wighttrial/settings.dart';
import 'package:wighttrial/signUpPage.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildSignUpBtn(context),
                    ],
                  ),
                  Positioned(
                    top: 60,
                    left: 130,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(40),
                        //shadowColor: Color.fromARGB(79, 179, 179, 179),
                      ),
                      child: const Icon(
                        CupertinoIcons.person_crop_circle,
                        color: Color(0xFF455274),
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  buildEmail(),
                ],
              ),
            ),
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
                      'Member1',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
                        left: 15.0,
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
                      top: 25.0,
                    ),
                    child: Text(
                      'Member2',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF455274),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15,
                        top: 15.0,
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
            shadowColor: const Color.fromARGB(255, 0, 0, 0),
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
            shadowColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          child: const Icon(
            Icons.lock,
            color: Color(0xFF455274),
          ),
        ),
      ),
      Positioned(
        top: 175,
        left: 330,
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(10),
            shadowColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xFF455274),
          ),
        ),
      ),
    ],
  );
}

buildSignUpBtn(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const signUpPage()),
      );
    },
    child: Stack(
      children: [
        Container(
          color: const Color.fromARGB(24, 255, 255, 255),
          height: 50,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: 15,
          left: 355,
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              'images/Vectordot.png',
              height: 15,
              width: 15,
            ),
          ),
        ),
        Positioned(
          top: 3,
          left: 30,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const settings(),
                ),
              );
            },
            child: const Icon(
              Icons.settings_suggest_outlined,
              color: Color.fromARGB(255, 69, 82, 116),
              size: 40,
            ),
          ),
        ),
      ],
    ),
  );
}
