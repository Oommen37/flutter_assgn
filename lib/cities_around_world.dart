import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Cities(),
  ));
}

class Cities extends StatelessWidget {
  var city = ['New Delhi', 'Beijing', 'Washinton D.C', 'Jakarta', 'Islamabad'];
  var pics = [
    'assets/delhi.jpeg',
    'assets/beijing.jpeg',
    'assets/washington.jpeg',
    'assets/jakarta.jpeg',
    'assets/islamabad.jpeg',
  ];
  var country = [
    'India',
    'China',
    'US',
    'Indonasia',
    'Pakistan',
  ];
  var population = [
    'population: 140.76Cr',
    'population: 141.24Cr',
    'population: 33.19Cr',
    'population: 27.38Cr',
    'population: 23.14Cr',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Populated Countries around the world'),
          centerTitle: true,
        ),
        body: ListView(
          children: List.generate(
            5,
            (index) => Card(
                child: Container(
              height: 100,
              color: Colors.orange,
              child: ListTile(
                leading: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(pics[index]))),
                ),
                title: Text(
                  city[index],
                  style: GoogleFonts.roboto(),
                ),
                subtitle: Column(
                  children: [
                    Text(
                      country[index],
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      population[index],
                    )
                  ],
                ),
              ),
            )),
          ),
        ));
  }
}
