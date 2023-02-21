import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'homePage.dart';

void main()
{
  runApp(MaterialApp(
    routes: {
      '/':(context) => HomePage(),
      '2':(context) => DetailsPage(),

    },
  ));
}