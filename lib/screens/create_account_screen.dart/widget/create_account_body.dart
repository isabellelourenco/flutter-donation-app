import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/constants/constants.dart';

class CreateAccountBody extends StatefulWidget {
  const CreateAccountBody({Key? key}) : super(key: key);

  @override
  _CreateAccountBodyState createState() => _CreateAccountBodyState();
}

class _CreateAccountBodyState extends State<CreateAccountBody> {
  bool _showPassword1 = false;
  bool _showPassword2 = false;
  bool isChecked1 = true;
  bool isChecked2 = false;
  String password = '';

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      return Colors.black;
    }

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
                          'E-mail',
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
                      hintText: 'Digite sua senha',
                      suffixIcon: GestureDetector(
                        child: Icon(
                            _showPassword1 == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey),
                        onTap: () {
                          setState(() {
                            _showPassword1 = !_showPassword1;
                          });
                        },
                      ),
                    ),
                    obscureText: _showPassword1 == false ? true : false,
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
                          'Confirme a senha',
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
                      hintText: 'Digite sua senha novamente',
                      suffixIcon: GestureDetector(
                        child: Icon(
                            _showPassword2 == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey),
                        onTap: () {
                          setState(() {
                            _showPassword2 = !_showPassword2;
                          });
                        },
                      ),
                    ),
                    obscureText: _showPassword2 == false ? true : false,
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
                          'De qual segmento você faz parte?',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                        bottom: kDefaultPadding - 10,
                        right: kDefaultPadding + 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Checkbox(
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value: isChecked1,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked1 = value!;
                                      isChecked2 = !isChecked2;
                                    });
                                  }),
                              Text(
                                'Doador',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          )),
                          Container(
                              child: Row(children: [
                            Checkbox(
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: isChecked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked2 = value!;
                                    isChecked1 = !isChecked1;
                                  });
                                }),
                            Text(
                              'ONG',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ]))
                        ],
                      )),
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
