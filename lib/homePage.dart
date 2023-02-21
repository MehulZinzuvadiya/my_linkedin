import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController txt_name = TextEditingController();
  TextEditingController txt_id = TextEditingController();
  TextEditingController txt_cmp = TextEditingController();
  TextEditingController txt_sop = TextEditingController();

  String path = " ";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "LinkedIn",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              backgroundImage: FileImage(File("$path")),
              backgroundColor: Colors.cyan,
              radius: 60,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  ImagePicker p2 = ImagePicker();
                  XFile? xfile =
                      await p2.pickImage(source: ImageSource.gallery);

                  setState(() {
                    path = xfile!.path;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan.shade700,
                  fixedSize: Size.fromHeight(50),
                ),
                child: Text(
                  "Gallery",
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: txt_name,
              decoration: InputDecoration(
                hintText: "Name:",
                border: OutlineInputBorder(),
                disabledBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: txt_cmp,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Comapany name:",
                disabledBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: txt_id,
              decoration: InputDecoration(
                hintText: "User ID:",
                border: OutlineInputBorder(),
                disabledBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: txt_sop,
              decoration: InputDecoration(
                hintText: "ur statement of purpose:",
                border: OutlineInputBorder(),
                disabledBorder: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Model m1 = Model(
                    name: txt_name,
                    comp: txt_cmp,
                    id: txt_id,
                    sop: txt_sop,
                  );
                  Navigator.pushNamed(context, '2', arguments: m1);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan.shade700,
                  fixedSize: Size.fromHeight(50),
                ),
                child: Text(
                  "Save",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    ));
  }
}
