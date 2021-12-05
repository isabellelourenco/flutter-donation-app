import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
import 'package:flutter_donation_app/models/ong.dart';
import 'package:flutter_donation_app/screens/update_account_ong_screen/widget/update_account_ong_banner.dart';
import 'package:flutter_donation_app/screens/update_account_ong_screen/widget/update_account_ong_body.dart';

class UpdateOngPage extends StatefulWidget {
  final Ong ong;
  UpdateOngPage(this.ong);

  @override
  _UpdateOngPageState createState() => _UpdateOngPageState(ong);
}

class _UpdateOngPageState extends State<UpdateOngPage> {
  final Ong ong;
  _UpdateOngPageState(this.ong);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            UpdateOngBanner(),
            UpdateOngBody(ong: ong),
          ],
        ),
      ),
    );
  }
}
