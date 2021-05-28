import 'package:flutter/material.dart';
import 'package:x_health/profile/TabLabel.dart';
import 'package:x_health/profile/palette.dart';

class PreviousTrips extends StatefulWidget {
  @override
  _PreviousTripsState createState() => _PreviousTripsState();
}

class _PreviousTripsState extends State<PreviousTrips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.4),
      child: ListView(
        children: [
          // Text(
          //   'History',
          //   style: Theme.of(context).textTheme.headline4.copyWith(
          //         color: Theme.of(context).primaryColor,
          //       ),
          //   textAlign: TextAlign.center,
          // ),
          Container(
            padding: EdgeInsets.only(top: 150.0),
            child: Text(
              'No history trips available at the moment !',
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
