import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';

class AddContentScreen extends StatelessWidget {
  const AddContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            _getHeaderSection(),
          ],
        ),
      ),
    );
  }

  Widget _getHeaderSection() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 27, horizontal: 18),
        child: Row(
          children: [
            Text(
              'Post',
              style: TextStyle(
                fontSize: 24,
                color: whiteColor,
                fontFamily: 'GB',
              ),
            ),
            SizedBox(width: 10),
            Image.asset('images/icon_arrow_down.png'),
            Spacer(),
            Text(
              'Next',
              style: TextStyle(
                fontSize: 16,
                color: whiteColor,
                fontFamily: 'GB',
              ),
            ),
            SizedBox(width: 5),
            Image.asset('images/icon_arrow_right_box.png')
          ],
        ),
      ),
    );
  }
}
