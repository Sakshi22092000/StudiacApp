import 'package:flutter/material.dart';
import 'package:note_app_demo/utilities/scaffold.dart';
import 'package:note_app_demo/button.dart';

class PROFILE_PAGE extends StatelessWidget {
  const PROFILE_PAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SCAFFOLD(
      BODY: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/profile_pic.jpg'),
                    backgroundColor: Colors.tealAccent,
                    radius: 70,
                  ),
                ),
                Container(
                  child: ELEVATED_BUTTON(
                    txt: 'Edit Profile',
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  EditBox(
                    smallText: 'Name',
                    bigText: 'John Doe',
                  ),
                  EditBox(
                    smallText: 'Date-of-Birth',
                    bigText: '15-07-2000',
                  ),
                  EditBox(
                    smallText: 'e-mail',
                    bigText: 'johndoe@gmail.com',
                  ),
                  EditBox(
                    smallText: 'Mobile number',
                    bigText: '8888999900',
                  ),
                  EditBox(
                    smallText: 'Institution name',
                    bigText: 'GEC, Chandrapur',
                  ),
                  EditBox(
                    smallText: 'Stream',
                    bigText: 'CSE',
                  ),
                  EditBox(
                    smallText: 'Graduation Year',
                    bigText: '2023',
                  ),
                  EditBox(
                    smallText: 'Relationship Stauts',
                    bigText: 'It\'s complicated',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ELEVATED_BUTTON(txt: 'My Uploads'),
                        ELEVATED_BUTTON(txt: 'Saved')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
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

class EditBox extends StatelessWidget {
  EditBox({@required this.smallText = '', this.bigText = ''});
  final String smallText;
  final String bigText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Container(
            child: Text(
              smallText,
              style: TextStyle(color: Colors.grey),
            ),
            width: double.infinity,
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            child: Text(
              bigText,
              style: TextStyle(fontSize: 20),
            ),
            width: double.infinity,
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
