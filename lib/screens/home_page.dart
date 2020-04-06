import 'package:epilexa/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
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
            fontSize: 30,
          ),
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
            onPressed: () {}
          ),
        ],
      ),
      backgroundColor: Color(0xFFEAEAEA),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'ACTIVITY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  ReusableCard(
                    colour: Colors.white,
                    cardChild: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Icon(
                                  Epilexa.vectorheart,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Text(
                                  'Heart Rate',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  '90',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'BPM',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                                ),
                              ],
                            ), //put the variable here
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '12:09'
                            ),
                            IconButton(
                              icon: Icon(Icons.navigate_next),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                  ReusableCard(
                    colour: Colors.white,
                    cardChild: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Icon(
                                  Epilexa.vectortemp,
                                  color: Color(0xFFFF7A00),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Temperature',
                                  style: TextStyle(
                                    color: Color(0xFFFF7A00),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  '22',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '°C',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                                ),
                              ],
                            ), //put the variable here
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('12:09'),
                            IconButton(
                                icon: Icon(Icons.navigate_next),
                                onPressed: () {})
                          ],
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                ],
              ),
            ), //activity
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'BAND STATUS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        StatusCard(title: 'LEFT HAND',),
                        StatusCard(title: 'RIGHT HAND',),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        StatusCard(title: 'LEFT LEG'),
                        StatusCard(title: 'RIGHT LEG')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), //band status
    );
  }
}


