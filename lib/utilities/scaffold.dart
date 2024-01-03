import 'package:flutter/material.dart';
import 'package:note_app_demo/utilities/pop_ups.dart';
import 'package:note_app_demo/utilities/drawer.dart';
import 'package:note_app_demo/screens/profile_page.dart';
import 'package:note_app_demo/screens/content_page.dart';

class SCAFFOLD extends StatelessWidget {
  SCAFFOLD({required this.BODY});
  Widget BODY;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(
          'Studiac',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'DancingScript',
            fontSize: 30,
          ),
        ),
      ),
      drawer: drawer(),
      body: BODY,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.tealAccent,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CONTENT_PAGE();
                }));
              },
              child: Icon(
                Icons.library_books,
                size: 35,
                color: Colors.black,
              ),
            ),
            label: 'Content',
          ),
          BottomNavigationBarItem(
            icon: PopUps(),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PROFILE_PAGE();
                }));
              },
              child: Icon(
                Icons.account_circle,
                size: 35,
                color: Colors.black,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class SubjectContainer extends StatelessWidget {
  SubjectContainer({@required this.branch = ''});
  final String branch;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.tealAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          branch,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
