import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';

class TopBarConfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.32,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    left: 100 + kDefaultPadding,
                    right: kDefaultPadding,
                    top: kDefaultPadding,
                    bottom: kDefaultPadding),
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("assets/images/top.png")),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 100 + kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding + 50,
                  top: 50 + kDefaultPadding,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Doe Fácil',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: Text(
                        'Conectando quem pode doar a quem precisa',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                  top: kDefaultPadding + 35,
                ),
                child: Row(
                  children: <Widget>[Image.asset("assets/images/appicon.png")],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
