import 'package:flutter/material.dart';
import 'package:flutter_assgn/Refractoring%20Widget/refractooring_widget.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_with_refractoring_widget(),
    debugShowCheckedModeBanner: false,
  ));
}

class Grid_with_refractoring_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recommended for you',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_circle_left_rounded),
        actions: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.settings_input_composite_rounded),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Custom_Card(
              image: const NetworkImage(
                  'https://media.istockphoto.com/id/1310533180/photo/cheerful-fashionable-adult-man-in-city-setting.jpg?s=612x612&w=0&k=20&c=hfy_5L8llmz_sUp1_n1NbM5Gsyk0kUbJRmR3TXAaoMM='),
              price: '45\$',
              rating: 4.5,
              icon: Icons.favorite_border,
              sale: '309 sales',
              click: () {},
              name: 'Light Blue Shade Denim Jacket For Men ',
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Custom_Card(
              image: const NetworkImage(
                  'https://images.unsplash.com/photo-1619225379807-e9002c44c462?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWVucyUyMHdhdGNofGVufDB8fDB8fHww'),
              price: '99\$',
              rating: 3.5,
              icon: Icons.favorite_border,
              sale: '105 sales',
              click: () {},
              name: 'Premium Chain Analog Unisex Watch ',
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Custom_Card(
              image: const NetworkImage(
                  'https://media.istockphoto.com/id/1355399132/photo/model-showing-her-beautiful-necklace-with-diamond-pendant.jpg?s=612x612&w=0&k=20&c=o3C3atmDtQZGoq-czoyrHVz4abSJhI6BXOXvF4mF3CE='),
              price: '198\$',
              rating: 4.5,
              icon: Icons.favorite_border,
              sale: '56 sales',
              click: () {},
              name: 'Womens Diamod Neclace 16 Karat',
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Custom_Card(
              image: const NetworkImage(
                  'https://media.istockphoto.com/id/1365118618/photo/blue-fashion-purse-handbag-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=VNszfC0cxenqZGhjlr3gqqvzHWREuhdY_H3CKF1B38g='),
              price: '80\$',
              rating: 3.0,
              icon: Icons.favorite_border,
              sale: '250 sales',
              click: () {},
              name: 'Womens Leather Light Blue Syling HandBag',
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Custom_Card(
              image: const NetworkImage(
                  "https://images.unsplash.com/photo-1695753648663-72cc4dd99449?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
              price: '150\$',
              rating: 4.5,
              icon: Icons.favorite_border,
              sale: '506 sales',
              click: () {},
              name: 'Trendy Sports Running Running Shoes For Men ',
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Custom_Card(
              image: const NetworkImage(
                  'https://media.istockphoto.com/id/1125110782/photo/young-man-isolated-on-gray-textured-wall-smiling-while-pointing-with-index-finger-to-black-t.jpg?s=612x612&w=0&k=20&c=NVobF35a4ogVyf9PrSCIwASDL2vsH9evJiYYGXSBKKI='),
              price: '15\$',
              rating: 5.0,
              icon: Icons.favorite_border,
              sale: '2506 sales',
              click: () {},
              name: 'Black Round Neck Tshirt For Men ',
            ),
          ),
        ],
      ),
    );
  }
}
