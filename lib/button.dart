import 'package:flutter/material.dart';

class ELEVATED_BUTTON extends StatelessWidget {
  ELEVATED_BUTTON({required this.txt, this.onPress});
  final String txt;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(Size(120, 40)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.tealAccent),
      ),
      child: FittedBox(child: Text(txt)),
    );
  }
}
