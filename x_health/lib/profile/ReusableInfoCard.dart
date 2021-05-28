import 'package:flutter/material.dart';
import 'package:x_health/profile/palette.dart';

class ReusableInfoCard extends StatelessWidget {
  const ReusableInfoCard({this.icon, this.info, this.color});
  final IconData icon;
  final Widget info;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: Container(
              child: Row(
                children: [
                  Center(
                    child: Container(
                      width: 100.0,
                      child: Icon(
                        icon,
                        size: 70.0,
                        color: kcardIconFaded,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: info,
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.fromLTRB(12.0, 15.0, 12.0, 0.0),
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: kcardBackground,
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
