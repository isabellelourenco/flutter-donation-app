import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
import 'package:flutter_donation_app/screens/create_account_screen.dart/create_account_screen.dart';
import 'package:flutter_donation_app/screens/home/donor_home.dart';
import 'package:flutter_donation_app/screens/login/login.dart';

class PageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgroundimage.png"),
                fit: BoxFit.cover),
          ),
          child: Container(
              height: 683,
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding + 100,
              ),
              child: Row(
                children: [
                  Flexible(
                      child: Text('Ajude quem Precisa',
                          style: TextStyle(
                            fontSize: 52.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )))
                ],
              )),
        ),
        Container(
          padding: EdgeInsets.only(
              top: kDefaultPadding + 10, right: kDefaultPadding),
          child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ],
              ))),
        ),
        Container(
            height: 800,
            padding: EdgeInsets.only(
              top: kDefaultPadding + 480,
            ),
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(
                  bottom: kDefaultPadding + 5,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kButtonPrimary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DonorHomeScreen()));
                    },
                    child: Text(
                      'Comece a Doar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CreateAccountPage()));
                    },
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cadastrar ONG',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ))),
              ),
            ]))
      ],
    ));
  }
}
