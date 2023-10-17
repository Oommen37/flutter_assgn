import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContactUi(),
  ));
}
class ContactUi extends StatelessWidget {
  var names = [
    'John',
    'David',
    'Kezia',
    'Karol',
    'Marcus',
    'Andrew',
    'Jose',
    'Prabhas',
    'Jessica',
    'John'
  ];
  var number = [
    '9947209345',
    '9747676306',
    '9947203882',
    '8129492943',
    '8985756256',
    '9764316566',
    '7845129632',
    '9986532145',
    '8865425866',
    '9832147852'
  ];

  ContactUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => Card(
                  child: ListTile(
                    title: Text(names[index]),
                    leading: CircleAvatar(child: Icon(Icons.face_6)),
                    subtitle: Text(number[index]),
                    trailing: Icon(Icons.call),
                  ),
                )),
      ),
    );
  }
}
