import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';
import 'package:flutter_donation_app/screens/home/donor_home.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({Key? key}) : super(key: key);

  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: kDefaultPadding + 10,
            ),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: kDefaultPadding - 10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'E-mail',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        controller: null,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(
                              left: 23.0, bottom: 16.0, top: 15.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Digite seu E-mail',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: kDefaultPadding,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: kDefaultPadding - 10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Senha',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(
                              left: 23.0, bottom: 16.0, top: 15.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Digite sua senha',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.only(
                top: kDefaultPadding + 60,
              ),
              height: 130,
              width: 335,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kFormButtonPrimary,
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
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
