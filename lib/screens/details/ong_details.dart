import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
import 'package:flutter_donation_app/models/ong.dart';
import 'package:flutter_donation_app/screens/details/widget/ong_banner.dart';
import 'package:flutter_donation_app/screens/details/widget/ong_description.dart';

class OngDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OngBanner(
              Ong(
                'Amigos do Bem',
                'Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor',
                'assets/images/amigos.png',
                '(81)99347-4343',
                'ong@gmail.com',
                'www.google.com',
                '23232323233',
                'Itau',
                '12312313',
                '1231231'
              ),
            ),
            OngDescription(
              Ong(
                'Amigos do Bem',
                'Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor',
                'assets/images/amigos.png',
                '(81)99347-4343',
                'ong@gmail.com',
                'www.google.com',
                '23232323233',
                'Itau',
                '12312313',
                '1231231'
              ),
            ),
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
