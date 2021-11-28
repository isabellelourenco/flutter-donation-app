import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
import 'package:flutter_donation_app/screens/update_account_ong_screen/widget/update_account_ong_banner.dart';
import 'package:flutter_donation_app/screens/update_account_ong_screen/widget/update_account_ong_body.dart';

class UpdateOngPage extends StatelessWidget {
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
            UpdateOngBody(),
          ],
        ),
      ),
    );
  }
}
