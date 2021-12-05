import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/models/ong.dart';
import 'package:flutter_donation_app/screens/details/widget/ong_banner.dart';
import 'package:flutter_donation_app/screens/details/widget/ong_description.dart';

class OngDetails extends StatefulWidget {
  final Ong ong;
  OngDetails(this.ong);

  @override
  _OngDetailsState createState() => _OngDetailsState();
}

class _OngDetailsState extends State<OngDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OngBanner(
              widget.ong,
            ),
            OngDescription(
              widget.ong,
            ),
          ],
        ),
      ),
    );
  }
}
