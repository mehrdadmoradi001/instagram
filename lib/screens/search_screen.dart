import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 46,
              margin: EdgeInsets.only(left: 18,right: 18,top: 12),
              decoration: BoxDecoration(
                color: backSearchBox,
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset('images/icon_search.png'),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search User',
                          hintStyle: TextStyle(color: whiteColor),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Image.asset('images/icon_scan.png')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
