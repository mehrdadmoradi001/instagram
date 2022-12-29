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
            _getSearchScreen(),
            _getStoryList(),
          ],
        ),
      ),
    );
  }

  Widget _getStoryList() {
    return Container(
      height: 23,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
              child: Text(
                'Mehrdad $index',
                style: TextStyle(
                  fontSize: 12,
                  color: whiteColor,
                  fontFamily: 'GM',
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: backSearchBox,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ), //
      ),
    );
  }

  Widget _getSearchScreen() {
    return Container(
      height: 46,
      margin: EdgeInsets.only(left: 18, right: 18, top: 12),
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
    );
  }
}
