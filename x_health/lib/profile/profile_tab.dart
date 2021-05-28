import 'package:flutter/material.dart';
import 'package:x_health/profile/ReusableInfoCard.dart';
import 'package:x_health/profile/TabButton.dart';
import 'package:x_health/profile/TabLabel.dart';
import 'package:x_health/profile/palette.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TabLabel(
            label: 'User Profile',
            color: kappSecondary,
            align: Alignment.centerLeft,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: ReusableInfoCard(
              icon: Icons.verified_user,
              color: kappColorLight,
              info: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "fname",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25.0,
                          color: kappPrimary),
                    ),
                    SizedBox(height: 1.0),
                    Text(
                      "lname",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: kcardContentFaded),
                    ),
                    SizedBox(height: 1.0),
                    Text(
                      "phone",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: kappColorDark),
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      'Tap for more info / To edit >',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 9.0,
                          color: kappSuccess),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 5.0),
              TabLabel(
                  label: 'Get Help',
                  color: kappSecondary,
                  align: Alignment.centerLeft),
              SizedBox(height: 10.0),
                  TabButton(
                  label: 'Call Help line',
                  color: kappPrimary,
                  icon: Icons.phone_forwarded_outlined,
                  weight: FontWeight.w400,
                  page: () => launch("tel://+256789530574")),
              Divider(
                  indent: 20.0,
                  endIndent: 25.0,
                  color: kappPrimary,
                  height: 1.0),
              TabButton(
                  label: 'Report a problem',
                  color: kappPrimary,
                  icon: Icons.email_outlined,
                  weight: FontWeight.w400,
                  page: () => launch(
                      "mailto:arnoldrutanana@gmail.com.com?subject=Report%20Problem")),
              Divider(
                indent: 20.0,
                endIndent: 25.0,
                color: kappPrimary,
                height: 1.0,
              ),
              TabButton(
                  label: 'Send Feedback',
                  color: kappPrimary,
                  icon: Icons.feedback_outlined,
                  weight: FontWeight.w400,
                  page: () => launch(
                      "mailto:arnoldrutanana@gmail.com?subject=Feedback")),  
            ],
          ),
          TabLabel(
            label: 'More',
            color: kappSecondary,
            align: Alignment.centerLeft,
          ),
          SizedBox(height: 10.0),
          TabButton(
            label: 'About',
            color: kappPrimary,
            icon: Icons.help_outline,
            weight: FontWeight.w400,
            page: () {},
          ),
        ],
      ),
    );
  }
}
