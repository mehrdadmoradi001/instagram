import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({this.controller, Key? key}) : super(key: key);
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            color: Color.fromRGBO(255, 255, 255, 0.001),
            //height: 300,
            child: _getContent(context),
          ),
        ),
      ),
    );
  }

  Widget _getContent(BuildContext context) {
    // return GridView.builder(
    //   controller: controller,
    //   itemCount: 100,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 4,
    //     mainAxisSpacing: 20,
    //     crossAxisSpacing: 20
    //   ),
    //
    //
    //   itemBuilder: (BuildContext context, int index) => Container(  //
    //     child: Container(
    //       color: Colors.yellow,
    //     ),
    //   ),
    // );
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 67,
                    margin: EdgeInsets.only(top: 10, bottom: 22),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                            fontFamily: 'GB', fontSize: 20, color: whiteColor),
                      ),
                      Image.asset('images/icon_share_bottomsheet.png'),
                    ],
                  ),
                  SizedBox(height: 32),
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.4),
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
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 60,
                (context, index) => _getItemGrid(),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( //
                mainAxisExtent: 110,
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 95),
            ),
          ],
        ),
        Positioned(
          bottom: 47,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 13),
              child: Text(
                'Share',
                style: TextStyle(fontFamily: 'GB', fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getItemGrid() {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            child: Image.asset('images/phototest.jpg'),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Mehrdad Moradi',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'GB',
            fontSize: 12,
            color: whiteColor,
          ),
        )
      ],
    );
  }
}
