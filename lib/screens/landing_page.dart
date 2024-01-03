import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:note_app_demo/utilities/scaffold.dart';
import 'package:note_app_demo/utilities/logged_in_widgit.dart';

class LANDING_PAGE extends StatefulWidget {
  const LANDING_PAGE({Key? key}) : super(key: key);

  @override
  _LANDING_PAGEState createState() => _LANDING_PAGEState();
}

class _LANDING_PAGEState extends State<LANDING_PAGE> {
  @override
  Widget build(BuildContext context) {
    return SCAFFOLD(
      BODY: Column(
        children: [
          // SizedBox(
          //   height: 10,
          // ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Search here',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image(
                image: AssetImage('images/winter.jpg'),
                width: double.infinity,
              ),
            ),
          ),
          Divider(
            color: Colors.teal,
            height: 1,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              margin: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.stars,
                      ),
                      title: Text(
                          'Ganesh Utsav celebrration begins ons 22nd September 2022'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.stars,
                      ),
                      title: Text(
                          'Registration for Box Cricket League conducted by Civil department has started and will end on 15th  March 2022'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.stars,
                      ),
                      title: Text(
                          'Summer 2022 Exam is to be conducted through online mode'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.stars,
                      ),
                      title: Text(
                          'GEC, Chandrapur had send it\'s team to compete in Parul University\'s inter-university Robotics Championship 2022'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.stars,
                      ),
                      title: Text(
                          'Summer 2022 Exam is to be conducted through online mode'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
