import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            child: Stack(
              children: [
                Positioned(
                  top: 250,
                  left: -180,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Color(0x304599ff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: -10,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color(0x30cc33ff),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                  ),
                ),
                Positioned(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Container(),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(children: [
                        const SizedBox(
                          height: 50,
                        ),
                        _loginLabel(),
                        const SizedBox(
                          height: 30,
                        ),
                        _loginLabel2(),
                        _logo(),
                        const SizedBox(
                          height: 5,
                        ),
                        _labelTextInput("Usuario", "carlitos", false),
                        const SizedBox(
                          height: 5,
                        ),
                        _labelTextInput("Email", "yourname@gmail.com", true),
                        const SizedBox(
                          height: 5,
                        ),
                        _labelTextInput("Contraseña", "**************", true),
                        const SizedBox(
                          height: 5,
                        ),
                        _labelTextInput(
                            "Confirmar contraseña", "******************", true),
                        const SizedBox(
                          height: 5,
                        ),
                        _loginBtn(),
                        const SizedBox(
                          height: 30,
                        ),
                        _signUpLabel(),
                      ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signUpLabel() {
  return Text(
    "Ya tienes una Cuenta. Entre aquí",
    style: GoogleFonts.josefinSans(
      textStyle: const TextStyle(
        color: Color(0xff909090),
        fontWeight: FontWeight.w800,
        fontSize: 13,
      ),
    ),
  );
}

Widget _loginBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0xff008fff),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextButton(
      onPressed: () => {},
      child: Text(
        "Confirmar",
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
      ),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Color(0xff8fa1b6),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      TextField(
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          helperText: hintText,
          hintStyle: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
              color: Color(0xffc5d2e1),
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffdfe8f3)),
          ),
        ),
      ),
    ],
  );
}

Widget _logo() {
  return Center(
    child: SizedBox(
      child: Image.network(
          "https://static.vecteezy.com/system/resources/thumbnails/004/607/802/small/set-of-man-face-emotive-icon-smiling-male-characters-flat-illustration-isolated-on-white-man-with-beard-american-african-male-positive-emotions-user-avatar-for-app-web-design-vector.jpg"),
      height: 150,
    ),
  );
}

Widget _loginLabel2() {
  return Center(
    child: Text(
      "¿Quién eres tú?",
      style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
        color: Color(0xff164276),
        fontWeight: FontWeight.w900,
        fontSize: 10,
      )),
    ),
  );
}

Widget _loginLabel() {
  return Center(
    child: Text(
      "Inscribirse",
      style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
        color: Color(0xff164276),
        fontWeight: FontWeight.w900,
        fontSize: 30,
      )),
    ),
  );
}
