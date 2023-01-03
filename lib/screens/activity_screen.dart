import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: deepColor,
              height: 70,
              child: TabBar(
                controller: _tabController,
                labelStyle: TextStyle(fontSize: 16, fontFamily: 'GB'),
                indicatorWeight: 4,
                indicatorColor: pinkColor,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                //
                //
                tabs: [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'You',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => Text('Following'),
                          childCount: 100,
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => Text('You'),
                          childCount: 100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
