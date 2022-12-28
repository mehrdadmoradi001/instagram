import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:instagram/screens/share_bottomsheet.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    barrierColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext) => DraggableScrollableSheet(
                      initialChildSize: 0.5,
                      minChildSize: 0.3,
                      maxChildSize: 0.7,
                      builder: (context, controller) => ShareBottomSheet(controller: controller,),
                    ),
                  );
                },
                child: Text('Open BottomSheet'),
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      index == 0 ? _getAddStoryBox() : _getStoryListBox(), //
                ),
              ),
              _getPostList()
            ],
          ),
        ),
      ),
    );
  }

  //------------------------------------------------------------------------------------

  Widget _getPostList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), //
      itemCount: 10,
      itemBuilder: (context, index) => Column(
        children: [
          SizedBox(height: 34),
          _getHeaderPost(),
          SizedBox(height: 24),
          _getPostContent(),
        ],
      ),
    );
  }

  Widget _getPostContent() {
    return Container(
      width: 394,
      height: 440,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('images/post_cover.png'),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset('images/icon_video.png'),
          ),
          Positioned(
            bottom: 15,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  width: 340,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.5),
                        Color.fromRGBO(255, 255, 255, 0.2),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Image.asset('images/icon_hart.png'),
                          SizedBox(width: 6),
                          Text(
                            '2.5 k',
                            style: TextStyle(
                              fontFamily: 'GB',
                              fontSize: 14,
                              color: whiteColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 42),
                      Row(
                        children: [
                          Image.asset('images/icon_comments.png'),
                          SizedBox(width: 6),
                          Text(
                            '1.5 k',
                            style: TextStyle(
                              fontFamily: 'GB',
                              fontSize: 14,
                              color: whiteColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 42),
                      Image.asset('images/icon_share.png'),
                      SizedBox(width: 42),
                      Image.asset('images/icon_save.png'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getHeaderPost() {
    return Padding(
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
    );
  }

  Widget _getStoryBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      color: pinkColor,
      dashPattern: [20, 10],
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

  Widget _getStoryListBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(17),
            padding: EdgeInsets.all(4),
            color: pinkColor,
            dashPattern: [20, 10],
            strokeWidth: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              child: Container(
                height: 58,
                width: 58,
                child: Image.asset('images/phototest.jpg'),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Test',
            style: TextStyle(color: whiteColor),
          ),
        ],
      ),
    );
  }

  Widget _getAddStoryBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
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
          SizedBox(height: 10),
          Text(
            'Test',
            style: TextStyle(color: whiteColor),
          )
        ],
      ),
    );
  }
}
