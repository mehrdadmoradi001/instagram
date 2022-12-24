import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepColor,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: deepColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('images/icon_plus.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
