import 'package:flutter/material.dart';
import 'package:epilexa/fonts/epilexa_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EPILEXA',
          style: TextStyle(
              color: Color(0xFF0075FF),
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFEAEAEA),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Epilexa.vectorprofile,
                color: Colors.black,
                size: 20,
              ),
              onPressed: (){})
        ],
      ),
      backgroundColor: Color(0xFFEAEAEA),
    );
  }
}
