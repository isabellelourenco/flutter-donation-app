import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
import 'package:flutter_donation_app/screens/ong_register_confirm/widget/ong_register_confirm_banner.dart';
import 'package:flutter_donation_app/screens/ong_register_confirm/widget/ong_register_confirm_body.dart';

class OngRegisterConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OngRegisterConfirmBanner(),
            OngRegisterConfirmBody(),
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
