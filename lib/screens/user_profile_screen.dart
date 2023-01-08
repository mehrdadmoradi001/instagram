import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/data/constants/constant_colors.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepColor,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
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
                expandedHeight: 200,
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
                delegate: TabBarViewDelegate(
                  TabBar(
                    indicatorWeight: 4,
                    indicatorColor: pinkColor,
                    indicatorPadding: EdgeInsets.only(left: 18,right: 18,bottom: 4),
                    tabs: [
                      Tab(
                        icon: Image.asset('images/icon_tab_posts.png'),
                      ),
                      Tab(
                        icon: Image.asset('images/icon_tab_bookmark.png'),
                      )
                    ],
                  ),
                ),
                pinned: true,
                floating: true,
              ),
            ],
            body: TabBarView(
              children: [
                _getCustomScrollView(),
                _getCustomScrollView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getCustomScrollView() {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(top: 20,left: 18,right: 18), //
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) => ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(
                    'images/item$index.png',
                  ),
                ),
              ),
            ),
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: [
                QuiltedGridTile(1, 1),
                QuiltedGridTile(2, 2),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
              ],
            ),
          ),
        ),
      ],
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

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  //creating Constructor
  TabBarViewDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Center(
      child: Container(
        color: deepColor,
        child: _tabBar,
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
