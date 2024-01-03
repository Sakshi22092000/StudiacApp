import 'package:flutter/material.dart';
import 'package:note_app_demo/utilities/scaffold.dart';

List<Container> options = [
  Container(
    padding: EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: 'Option 1',
      ),
    ),
  ),
];

class POLL extends StatefulWidget {
  const POLL({Key? key}) : super(key: key);

  @override
  _POLLState createState() => _POLLState();
}

class _POLLState extends State<POLL> {
  int option_var = 1;
  @override
  Widget build(BuildContext context) {
    return SCAFFOLD(
      BODY: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Write your question here',
                ),
              ),
            ),
            Column(
              children: options,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: GestureDetector(
                    onTap: () {
                      if (option_var > 1) {
                        setState(() {
                          options.removeAt(option_var - 1);
                        });
                        option_var--;
                      }
                    },
                    child: Icon(
                      Icons.remove_circle,
                      size: 60,
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      if (option_var < 8) {
                        option_var++;
                        setState(() {
                          options.add(
                            Container(
                              padding: EdgeInsets.all(15),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: 'Option $option_var',
                                ),
                              ),
                            ),
                          );
                        });
                      }
                    },
                    child: Icon(
                      Icons.add_circle,
                      size: 60,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.check_circle,
                  size: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
