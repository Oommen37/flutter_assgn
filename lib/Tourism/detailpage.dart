import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: DetailsPage(),
  ));
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/eiffel.jpeg'))),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 400.0),
            child: Text(
              'France',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
                '''France, in Western Europe, encompasses medieval cities, alpine villages and Mediterranean beaches. Paris, its capital, is famed for its fashion houses, classical art museums including the Louvre and monuments like the Eiffel Tower. The country is also renowned for its wines and sophisticated cuisine. Lascaux’s ancient cave drawings, Lyon’s Roman theater and the vast Palace of Versailles attest to its rich history. 
            France, in Western Europe, encompasses medieval cities, alpine villages and Mediterranean beaches. Paris, its capital, is famed for its fashion houses, classical art museums including the Louvre and monuments like the Eiffel Tower. The country is also renowned for its wines and sophisticated cuisine. Lascaux’s ancient cave drawings, Lyon’s Roman theater and the vast Palace of Versailles attest to its rich history. '''),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/visit1.jpeg'))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/visit2.jpeg'))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/visit3.jpeg'))),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, top: 5),
                    child: Container(
                        height: 35,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(45)),
                        child: Column(
                          children: [
                            Text(
                              'Explore',
                              style: GoogleFonts.roboto(
                                  color: Colors.white, fontSize: 25),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
