import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app_demo/provider/google_sign_in.dart';
import 'package:note_app_demo/screens/landing_page.dart';
import 'package:note_app_demo/button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LOGIN_PAGE extends StatelessWidget {
  const LOGIN_PAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  icon: FaIcon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  label: Text('Sign Up with Email'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LANDING_PAGE();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.tealAccent,
                    onPrimary: Colors.black,
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                  label: Text('Sign Up with Google'),
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.googleLogin();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.tealAccent,
                    onPrimary: Colors.black,
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
