import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';

class UpdateOngBody extends StatefulWidget {
  const UpdateOngBody({Key? key}) : super(key: key);

  @override
  _UpdateOngBodyState createState() => _UpdateOngBodyState();
}

class _UpdateOngBodyState extends State<UpdateOngBody> {
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
                          'Fale sobre a ONG',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      child: Column(children: [
                    TextFormField(
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      minLines: 6,
                      maxLines: 6,
                      maxLength: 260,
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
                        hintText: 'Escreva um breve resumo sobre a ONG',
                      ),
                    ),
                  ]))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: kDefaultPadding - 20,
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
                          'Site',
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
                      hintText: 'Digite o site',
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
                          'PIX',
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
                      hintText: 'Digite seu PIX',
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
                          'Banco',
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
                      hintText: 'Digite seu banco',
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
                          'Agência',
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
                      hintText: 'Digite sua agência',
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
                          'Conta',
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
                      hintText: 'Digite sua conta',
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
                                  'Salvar Modificações',
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
