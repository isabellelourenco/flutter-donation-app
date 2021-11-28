import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
import 'package:flutter_donation_app/screens/create_account_ong_screen/widget/create_account_ong_banner.dart';
import 'package:flutter_donation_app/screens/create_account_ong_screen/widget/create_account_ong_body.dart';

class CreateOngPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CreateOngBanner(),
            CreateOngBody(),
          ],
        ),
      ),
    );
  }
}
