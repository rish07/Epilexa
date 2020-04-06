import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.only(top:18.0,right: 8),
        padding: EdgeInsets.only(top: 15,bottom: 15, left: 20,right: 0),
        decoration: BoxDecoration(
          boxShadow:[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              spreadRadius: 0.2,
              offset: Offset(5, 5),
            )
          ],
          color: colour,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  final String title;
  String batteryPercentage;
  bool connectionStatus;

  StatusCard({@required this.title,this.connectionStatus,this.batteryPercentage
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        colour: Colors.white,
        cardChild: Container(
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('Battery'),
                        Text(
                          '50%',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0075FF),
                              fontSize: 20),
                        ),
                      ],
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Connectivity'),
                        Icon(
                          Icons.signal_cellular_4_bar,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}