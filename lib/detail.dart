import 'package:flutter/material.dart';
import 'package:my_linkedin/model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Model m1 = ModalRoute.of(context)!.settings.arguments as Model;
    return Scaffold (
      body: Column(
        children: [
          Container(
            height: 100,
        width: 100,
        color: Colors.green,
          );
        ],
      ),
    );
  }
}
