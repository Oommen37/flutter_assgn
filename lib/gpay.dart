import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
                image: AssetImage("assets/google-pay.png"),
                width: 150,
                height: 150),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Google",
                style: GoogleFonts.montaga(
                    fontSize: 30,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )));
  }
}
