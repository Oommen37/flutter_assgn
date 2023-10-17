import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Openpage(),
  ));
}

class Openpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 80),
                const Text(
                  'Hello There!',
                  style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                ),
                const Text(
                    'Automatic identity verification which enables you to verify your identity'),
                Image.asset(
                  'assets/lapladywork.png',
                  height: 400,
                  width: 400,
                ),
                Container(
                  width: 700,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Log in'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45))),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
                  width: 700,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45))),
                  ),
                ),
                SizedBox(height: 60)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
