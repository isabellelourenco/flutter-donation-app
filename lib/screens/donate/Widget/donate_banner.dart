import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_donation_app/models/ong.dart';

class DonateBanner extends StatelessWidget {
  final Ong ong;
  DonateBanner(this.ong);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Image.asset(ong.ongImg,fit: BoxFit.fitHeight),
                ),
              ),
              Container(
                height: 20,
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 15,
            left: 25,
            child: Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios, 
                  color: Colors.white,
                ),
                iconSize: 20,
                onPressed: () => Navigator.of(context).pop(false),
              ),       
            ),
          ),
        ],
      ),
    );
  }
}