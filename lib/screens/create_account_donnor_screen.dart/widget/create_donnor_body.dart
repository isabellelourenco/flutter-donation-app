import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';

class CreateDonnorBody extends StatefulWidget {
  const CreateDonnorBody({Key? key}) : super(key: key);

  @override
  _CreateDonnorBodyState createState() => _CreateDonnorBodyState();
}

class _CreateDonnorBodyState extends State<CreateDonnorBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                          'Nome',
                          style: TextStyle(
                            fontSize: 16.0,
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
                      hintText: 'Digite seu Nome',
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
                          'Endereço',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    controller: null,
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
                      hintText: 'Digite seu endereço',
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
                          'Contato',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    controller: null,
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
                      hintText: 'Digite seu contato',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: kDefaultPadding + 5,
              ),
              child: Column(
                children: [
                  Container(
                      child: Container(
                    child: Stack(
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                alignment: Alignment.bottomLeft,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Ink(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.blue, Colors.green]),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                width: 335,
                                height: 56,
                                alignment: Alignment.center,
                                child: Text(
                                  'Criar uma conta',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            ))
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ],
        ));
  }
}
