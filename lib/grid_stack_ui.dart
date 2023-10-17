import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: country(),
    debugShowCheckedModeBanner: false,
  ));
}

class country extends StatelessWidget {
  var names = ['U.S.A', 'England', 'France', 'Russia', 'Canada'];

  var pics = [
    'assets/images/usa.jpeg',
    'assets/images/eng.jpg',
    'assets/images/france.jpg',
    'assets/images/russia.jpg',
    'assets/images/canada.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 5,
          itemBuilder: (ctx, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(pics[index]), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 110,
                    child: Container(
                      child: Text(
                        names[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                            shadows: [
                              Shadow(
                                  color: Colors.black26,
                                  offset: Offset(3, 3),
                                  blurRadius: 10)
                            ]),
                      ),
                    ))
              ],
            );
          }),
    );
  }
}
