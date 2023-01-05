import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) => [
          SliverAppBar(
            //toolbarHeight: 100,
            // pinned: true,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 18, top: 18),
                child: Icon(Icons.menu),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(14),
              child: Container(
                height: 14,
                decoration: BoxDecoration(
                  color: deepColor,
                  borderRadius: BorderRadius.only(
                    //
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
            expandedHeight: 100,
            backgroundColor: deepColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/item1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _getProfileHeader(),
          ),
          SliverPersistentHeader(
            delegate: tabBarViewDelegate(),
            pinned: true,
            floating: true,
          ),
        ],
        body: Container(
          color: Colors.red,
        ),
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
              'MehrdadMoradi',
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

class tabBarViewDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Center(
      child: Container(
        color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Me'),
            Text('1'),
            Text('2'),
            Text('3'),
            Text('4'),
            Text('5'),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 300;

  @override
  // TODO: implement minExtent
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
