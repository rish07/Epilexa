import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAEAEA),
      appBar: AppBar(
        title: Text(
          'Profile',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color(0xFF0075FF),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF0075FF),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'home');
          },
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFEAEAEA),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ContactDetail(detailTitle: 'Name:',detailValue: 'Snoopy',),
              ContactDetail(detailTitle: 'Age:',detailValue: 'One',),
              ContactDetail(detailTitle: 'Address:',detailValue: 'Somewhere, somplace',),
              ContactDetail(detailTitle: 'Father name:',detailValue: 'Snoopy dad',),
              ContactDetail(detailTitle: 'Father contact:',detailValue: '1234567890',),
              ContactDetail(detailTitle: 'Mother name:',detailValue: 'Snoopy mom',),
              ContactDetail(detailTitle: 'Mother contact:',detailValue: '9876543210',),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactDetail extends StatefulWidget {

  final String detailTitle;
  String detailValue;

  ContactDetail({this.detailTitle, this.detailValue});

  @override
  _ContactDetailState createState() => _ContactDetailState();
}

class _ContactDetailState extends State<ContactDetail> {
  bool edit=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.detailTitle,
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
              Container(
                child: edit
                    ? IconButton(
                  icon: Icon(Icons.check),
                  onPressed: () {
                    setState(() {
                      edit = false;
                    });
                  },
                )
                    : IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    setState(() {
                      edit = true;
                    });
                  },
                ),
              )
            ],
          ),
          Container(
              child: edit
              ? TextField(
                  onChanged: (text) {
                    widget.detailValue = text;
                  },
              )
              : Text(
                widget.detailValue,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
