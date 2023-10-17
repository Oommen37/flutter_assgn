import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    home: Music2(),
    debugShowCheckedModeBanner: false,
  ));
}

class Music2 extends StatefulWidget {
  @override
  State<Music2> createState() => _Music2State();
}

class _Music2State extends State<Music2> {
  var playl = ['assets/2.jpg', 'assets/6.jpg', 'assets/9.jpg'];
  var sugg = [
    'assets/futurerapper.jpg',
    'assets/post-malone-digital-art-4k-j4.jpg',
    'assets/Anirudh.jpg',
    'assets/fejo.jpg',
    'assets/RAghu.jpg',
    'assets/asaprocky.jpg',
    'assets/kaushal.jpg',
    'assets/dhibu.jpg'
  ];
  var artist = [
    'Future',
    'Post Malone',
    'Anirudh Ravichander',
    'Fejo',
    'Raghu Dixit',
    'ASAP Rocky',
    'Kaushal Shekhawat',
    'Dhibu Ninan Thomas'
  ];

  var names = [
    'Mask Off',
    'Congratulations',
    'Hayyoda',
    'Hey Nima',
    'Aarorum',
    'Praise The Lord',
    'Labzo Se Tha Jo Pare',
    'Nee Kavithaigala'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned: false,
            floating: true,
            centerTitle: true,
            title: Text(
              'Musify',
              style: GoogleFonts.montserrat(
                  color: Colors.pink[100],
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 300,
                              width: 300,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(45),
                                  child: Image.asset(playl[index])),
                            ),
                          )),
                ),
              ),
              childCount: 1,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Recommended for you',
                style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[100]),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Column(
                        children: List.generate(
                            8,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: ListTile(
                                    leading: Container(
                                      height: 55, width: 55,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: AssetImage(sugg[index]),
                                              fit: BoxFit.cover)),
                                      // child: Image.asset(sugg[index])
                                    ),
                                    title: Text(
                                      names[index],
                                      style: GoogleFonts.montserrat(
                                          color: Colors.pink[100],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      artist[index],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.star_border_outlined,
                                          color: Colors.pink[100],
                                        ),
                                        SizedBox(
                                          width: 60,
                                        ),
                                        Icon(
                                          Icons.download_outlined,
                                          color: Colors.pink[100],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                      ),
                  childCount: 1))
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          items: [
            SalomonBottomBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text('Home'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                title: Text('Search'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(
                  Icons.play_circle_sharp,
                  color: Colors.white,
                ),
                title: Text('Playlist'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                title: Text('Menu'),
                selectedColor: Colors.pink[100])
          ]),
    );
  }
}
