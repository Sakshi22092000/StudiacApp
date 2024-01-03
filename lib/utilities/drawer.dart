import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/grp_icon.jpeg'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'RS & Co.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Sahil K.        Sakshi  P.'),
            Text('Rutika K.       Rutika T.'),
            Text('Rohan K.'),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Donate Us'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'www.rsco.in',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 300,
            ),
            Text('© 2022-2023'),
            Text('RS & Co. pvt. ltd.'),
          ],
        ),
      ),
    );
  }
}
