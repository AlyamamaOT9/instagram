import 'package:flutter/material.dart';
import 'package:instagram/profilepage.dart';
import 'package:instagram/searchpage.dart';

import 'homepage.dart';

void main() {
  // runApp(const MaterialApp(home: homepage(),
  // debugShowCheckedModeBanner: false,));
  // runApp(const MaterialApp(home: searchpage(),
  //   debugShowCheckedModeBanner: false,));
  runApp(const MaterialApp(home: profilepage(),
     debugShowCheckedModeBanner: false,));
}

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

