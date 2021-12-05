import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/models/ong.dart';

import 'Widget/donate_banner.dart';
import 'Widget/donate_informations.dart';

class DonateDetails extends StatefulWidget {
  final Ong ong;
  DonateDetails(this.ong);

  @override
  _DonateDetailsState createState() => _DonateDetailsState();
}

class _DonateDetailsState extends State<DonateDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            DonateBanner(
              widget.ong,
            ),
            DonateInformations(
              widget.ong,
            ),
          ],
        ),
      ),
    );
  }
}
