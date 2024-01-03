import 'package:flutter/material.dart';
import 'package:note_app_demo/button.dart';
import 'package:note_app_demo/utilities/scaffold.dart';

class ANNOUNCEMENT extends StatelessWidget {
  const ANNOUNCEMENT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SCAFFOLD(
      BODY: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Title'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: TextField(
              maxLines: 10,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Tags'),
            ),
          ),
          ELEVATED_BUTTON(txt: 'Upload'),
        ],
      ),
    );
  }
}
