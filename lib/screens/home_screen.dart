import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';
import 'package:dotted_border/dotted_border.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: deepColor,
        title: Container(
          width: 128,
          height: 24,
          child: Image.asset('images/moodinger_logo.png'),
        ),
        elevation: 0,
        actions: [
          Container(
            width: 24,
            height: 24,
            child: Image.asset('images/icon_direct.png'),
            margin: EdgeInsets.only(right: 18),
          ),
        ],
      ),
      backgroundColor: deepColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                _getStoryBox(),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MehrdadMoradi001',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: whiteColor,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'مهرداد مرادی برنامه نویس موبایل',
                        style: TextStyle(
                          fontFamily: 'SM',
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Image.asset('images/icon_menu.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getStoryBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      color: pinkColor,
      dashPattern: [40, 10],
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        child: Container(
          height: 38,
          width: 38,
          child: Image.asset('images/phototest.jpg'),
        ),
      ),
    );
  }

  Widget _getAddStoryBox() {
    return Container(
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
    );
  }
}
