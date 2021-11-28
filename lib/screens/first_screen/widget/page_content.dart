import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
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
            height: 600,
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'Criar uma conta',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ],
              ))
            ]))
      ],
    ));
  }
}
