import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile2(),
  ));
}

class Profile2 extends StatelessWidget {
  const Profile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 440.0),
                child: Icon(Icons.menu),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1284321181/photo/young-african-american-female-singer-recording-song-in-the-music-studio.jpg?s=612x612&w=0&k=20&c=uofnR1mjGbNrlxQ5-LymamJDKF1_axgpiaxDE7G0cnU='),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 150),
                child: FaIcon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: FaIcon(
                  FontAwesomeIcons.github,
                  size: 40,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Neha Bhaskar',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('@neha3158'),
          ),
          Text(
            'Music Artist',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 60,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 290,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(45)),
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip_outlined),
                      title: Text('Privacy'),
                      trailing: Icon(Icons.arrow_forward_ios_sharp),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)),
                      child: ListTile(
                        leading: Icon(Icons.history),
                        title: Text('Purchase history'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)),
                      child: ListTile(
                        leading: Icon(Icons.help),
                        title: Text('Help'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)),
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)),
                      child: ListTile(
                        leading: Icon(Icons.add_reaction_outlined),
                        title: Text('Invite friends'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)),
                      child: ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Log out'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
