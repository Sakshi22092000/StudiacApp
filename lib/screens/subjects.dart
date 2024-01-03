import 'package:flutter/material.dart';
import 'package:note_app_demo/utilities/scaffold.dart';

class SUBJECTS extends StatelessWidget {
  const SUBJECTS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubjectContainer(branch: 'C-Language'),
        SubjectContainer(branch: 'C++'),
        SubjectContainer(branch: 'Digital Electronics'),
        SubjectContainer(branch: 'CAO'),
        SubjectContainer(branch: 'DS Algo'),
        SubjectContainer(branch: 'OS'),
        SubjectContainer(
          branch: 'TOC',
        ),
      ],
    );
  }
}
