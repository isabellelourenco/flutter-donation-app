import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
import 'package:flutter_donation_app/screens/donate_confirm/widget/confirm_informations.dart';
import 'package:flutter_donation_app/screens/donate_confirm/widget/top_bar_confirm.dart';
class DonateConfirmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TopBarConfirm(),
            ConfirmInformations(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackgroundColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Image.asset('assets/icons/home.png', width: 25),
        ),
        BottomNavigationBarItem(
          label: 'user',
          icon: Image.asset('assets/icons/user.png', width: 25),
        ),
      ],
    );
  }
}
