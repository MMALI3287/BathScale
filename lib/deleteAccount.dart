// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wighttrial/settings.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  String text = lorem(paragraphs: 1, words: 35);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(240, 255, 255, 255),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 25,
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 465.0,
                  left: 23.0,
                  bottom: 100.0,
                  right: 15.0,
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
                        color: Color.fromARGB(15, 0, 0, 0),
                        blurRadius: 9,
                        offset: Offset(-10, 8),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 30,
                      bottom: 30,
                      right: 30,
                    ),
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 69, 82, 116),
                        fontSize: 13,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 680,
                left: 100,
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.only(
                      right: 52,
                      left: 52,
                      top: 15,
                      bottom: 15,
                    ),
                    shadowColor: const Color.fromARGB(150, 0, 0, 0),
                  ),
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(
                      color: Color.fromARGB(255, 69, 82, 116),
                      fontSize: 13,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 130,
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(55),
                    shadowColor: const Color.fromARGB(150, 0, 0, 0),
                  ),
                  child: const Icon(
                    CupertinoIcons.delete,
                    color: Color(0xFF455274),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
