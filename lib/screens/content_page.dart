import 'package:flutter/material.dart';
import 'package:note_app_demo/utilities/scaffold.dart';
import 'package:note_app_demo/button.dart';

class CONTENT_PAGE extends StatelessWidget {
  const CONTENT_PAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SCAFFOLD(
      BODY: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubjectContainer(
            branch: 'Computer',
          ),
          SubjectContainer(
            branch: 'Instrumental',
          ),
          SubjectContainer(
            branch: 'Electrical',
          ),
          SubjectContainer(
            branch: 'Mechanical',
          ),
          SubjectContainer(
            branch: 'Civil',
          ),
          SubjectContainer(
            branch: 'EXTC',
          ),
          SubjectContainer(
            branch: 'other',
          ),
        ],
      ),
    );
  }
}
