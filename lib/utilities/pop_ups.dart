import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app_demo/screens/announcement.dart';
import 'package:note_app_demo/screens/poll.dart';
import 'package:note_app_demo/screens/upload_note.dart';

class PopUps extends StatelessWidget {
  const PopUps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: Colors.black,
      animatedIcon: AnimatedIcons.add_event,
      overlayColor: Colors.black,
      overlayOpacity: 0.6,
      spaceBetweenChildren: 12,
      children: [
        SpeedDialChild(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return UPLOAD_NOTE();
                },
              ),
            );
          },
          child: Icon(
            Icons.cloud_upload,
          ),
          backgroundColor: Colors.tealAccent,
          label: 'Upload a Note',
        ),
        SpeedDialChild(
          child: Icon(
            FontAwesomeIcons.bullhorn,
          ),
          backgroundColor: Colors.tealAccent,
          label: 'Announcement',
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ANNOUNCEMENT();
                },
              ),
            );
          },
        ),
        SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.voteYea,
            ),
            backgroundColor: Colors.tealAccent,
            label: 'Create a Poll',
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return POLL();
                  },
                ),
              );
            }),
      ],
    );
  }
}
