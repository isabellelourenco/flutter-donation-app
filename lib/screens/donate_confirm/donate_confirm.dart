import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
import 'package:flutter_donation_app/screens/donate_confirm/widget/confirm_informations.dart';
import 'package:flutter_donation_app/screens/donate_confirm/widget/top_bar_confirm.dart';
import 'package:flutter_donation_app/screens/home/donor_home.dart';
import 'package:flutter_donation_app/screens/update_account_donnor/update_account_donnor.dart';

class DonateConfirmScreen extends StatefulWidget {
  @override
  _DonateConfirmScreenState createState() => _DonateConfirmScreenState();
}

class _DonateConfirmScreenState extends State<DonateConfirmScreen> {
  int currentlyIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentlyIndex = index;
    });

    if (currentlyIndex == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DonorHomeScreen()));
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UpdateDonnorPage()));
    }
  }

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
      currentIndex: currentlyIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackgroundColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Image.asset('assets/icons/home.png', width: 25),
        ),
      ],
    );
  }
}
