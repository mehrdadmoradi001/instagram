import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepColor,
      body: Center(
        child: _getProfileHeader(),
      ),
    );
  }

  Widget _getProfileHeader() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getUserProfile(),
            SizedBox(width: 15),
            _getTextProfile(),
            Spacer(),
            Image.asset('images/icon_profile_edit.png'),
          ],
        ),
      );
  }

  Widget _getTextProfile() {
    return Container(
      height: 70,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مهرداد مرادی برنامه نویس موبایل',
              style:
                  TextStyle(fontFamily: 'SM', color: whiteColor, fontSize: 14),
            ),
            SizedBox(height: 5),
            Text(
              'd',
              style:
                  TextStyle(fontFamily: 'GB', color: whiteColor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getUserProfile() {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: pinkColor),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(2),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset('images/phototest.jpg'),
          ),
        ),
      ),
    );
  }
}
