import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_demo/utilities/scaffold.dart';
import 'package:note_app_demo/button.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UPLOAD_NOTE extends StatefulWidget {
  const UPLOAD_NOTE({Key? key}) : super(key: key);

  @override
  State<UPLOAD_NOTE> createState() => _UPLOAD_NOTEState();
}

class _UPLOAD_NOTEState extends State<UPLOAD_NOTE> {
  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  String? fileName;
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    setState(() {
      pickedFile = result.files.first;
    });
  }

  Future uploadFile() async {
    final path = 'files/${pickedFile!.name}';
    final file = File(pickedFile!.path!);
    final ref = FirebaseStorage.instance.ref().child(path);
    setState(() {
      uploadTask = ref.putFile(file);
    });
    final snapshot = await uploadTask!.whenComplete(() => null);
    final urlDownload = await snapshot.ref.getDownloadURL();
    print('Download link: $urlDownload');
    setState(() {
      uploadTask = null;
    });
  }

  Widget buildProgress() => StreamBuilder<TaskSnapshot>(
        stream: uploadTask?.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            double progress = data.bytesTransferred / data.totalBytes;
            return SizedBox(
              height: 50,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey,
                    color: Colors.green,
                  ),
                  Center(
                    child: Text(
                      '${(100 * progress).roundToDouble()}%',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox(
              height: 50,
            );
          }
        },
      );
  @override
  Widget build(BuildContext context) {
    return SCAFFOLD(
      BODY: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Title'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: TextField(
              onChanged: (value) {
                fileName = value;
              },
              maxLines: 10,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Description'),
            ),
          ),
          ElevatedButton(
            onPressed: selectFile,
            child: const Text(
              'Select File',
            ),
          ),
          ElevatedButton(
            onPressed: uploadFile,
            child: const Text(
              'Upload File',
            ),
          ),
          buildProgress(),
        ],
      ),
    );
  }
}
