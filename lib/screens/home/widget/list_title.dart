import 'package:flutter/cupertino.dart';
import 'package:flutter_donation_app/constants/constants.dart';

class ListTitle extends StatelessWidget {
  final String leftText;
  ListTitle(this.leftText);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding,
        bottom: kDefaultPadding - 5,
      ),
      child: Row(
        children: [
          Text(
            leftText,
            style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: kFont
            ),
          ),
        ],
      )
    );
  }
}
