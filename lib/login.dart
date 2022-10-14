import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wighttrial/signUpPage.dart';
import 'package:wighttrial/weight.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildSignUpBtn(context),
                ],
              ),
            ),
            // Stack(
            //   children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  buildEmail(),
                  const SizedBox(
                    height: 70,
                  ),
                  buildLoginBtn(context),
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
          height: 190,
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
                blurRadius: 15,
                offset: Offset(-10, 5),
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
                        fontSize: 13,
                        color: Color.fromARGB(255, 69, 82, 116),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
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
                      top: 25.0,
                    ),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 69, 82, 116),
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
            shadowColor: const Color.fromARGB(120, 0, 0, 0),
          ),
          child: const Icon(
            Icons.email,
            color: Color.fromARGB(255, 69, 82, 116),
          ),
        ),
      ),
      Positioned(
        top: 115,
        left: -4,
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(8),
            shadowColor: const Color.fromARGB(120, 0, 0, 0),
          ),
          child: const Icon(
            Icons.lock,
            color: Color.fromARGB(255, 69, 82, 116),
          ),
        ),
      ),
    ],
  );
}

Widget buildLoginBtn(BuildContext context) {
  return SizedBox(
    width: 130,
    height: 50,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const weight()),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shadowColor: const Color.fromARGB(120, 0, 0, 0),
      ),
      child: Text(
        'Login',
        style: GoogleFonts.openSans(
          color: const Color.fromARGB(255, 69, 82, 116),
          fontSize: 13,
        ),
      ),
    ),
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
          color: const Color.fromARGB(25, 0, 0, 0),
          height: 50,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: 22,
          left: 321,
          child: RichText(
            text: TextSpan(
              text: 'SignUp',
              style: GoogleFonts.openSans(
                color: const Color(0xFF455274),
                fontSize: 17,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
