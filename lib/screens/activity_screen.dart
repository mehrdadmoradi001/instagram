import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';
import 'package:instagram/model/enums/activity_type_enum.dart';

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
                          (context, index) => _getRow(ActivityStatus.likes),
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

  Widget _getRow(ActivityStatus status) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: pinkColor,
            ),
          ),
          SizedBox(width: 7),
          SizedBox(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('images/phototest.jpg'),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'MehrdadMoradi001',
                    style: TextStyle(
                        fontFamily: 'GB', fontSize: 12, color: whiteColor),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Started ',
                    style: TextStyle(
                        fontFamily: 'GM', fontSize: 12, color: grayColor),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'you',
                    style: TextStyle(
                        fontFamily: 'GM', fontSize: 12, color: grayColor),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '3min',
                    style: TextStyle(
                        fontFamily: 'GB', fontSize: 10, color: grayColor),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          _getActivityActionRow(status)
        ],
      ),
    );
  }
}

Widget _getActivityActionRow(ActivityStatus status) {
  switch (status) {
    case ActivityStatus.followBack:
      return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: pinkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(
          'Follow',
          style: TextStyle(fontSize: 16, fontFamily: 'GB'),
        ),
      );
      break;

    case ActivityStatus.likes:
      return SizedBox(
        width: 40,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset('images/item1.png'),
          ),
        ),
      );

    case ActivityStatus.following:
      return OutlinedButton(
        onPressed: () {},
        child: Text(
          'Message',
          style: TextStyle(fontSize: 12, fontFamily: 'GB', color: grayColor),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: grayColor, width: 2),
        ),
      );

    default:
      return OutlinedButton(
        onPressed: () {},
        child: Text(
          'Message',
          style: TextStyle(fontSize: 12, fontFamily: 'GB', color: grayColor),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: grayColor, width: 2),
        ),
      );
  }
}
