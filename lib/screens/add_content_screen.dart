import 'package:flutter/material.dart';
import 'package:instagram/data/constants/constant_colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AddContentScreen extends StatelessWidget {
  const AddContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepColor,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            _getWholeScrollingPart(),
            _getBoxBottom(),
          ],
        ),
      ),
    );
  }

  Widget _getWholeScrollingPart() {
    return CustomScrollView(
      slivers: [
        _getHeaderSection(),
        _getSelectedImageContainer(),
        _getGalleryImagesScrollGrid(),
        SliverPadding(padding: EdgeInsets.only(bottom: 83)),
      ],
    );
  }

  Widget _getBoxBottom() {
    return Container(
            height: 83,
            width: double.infinity,
            decoration: BoxDecoration(
              color: backSearchBox,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Draft',
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 16,
                      color: whiteColor
                    ),
                  ),
                  Text(
                    'Gallery',
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 16,
                      color: whiteColor
                    ),
                  ),
                  Text(
                    'Take',
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 16,
                      color: whiteColor
                    ),
                  ),
                ],
              ),
            ),
          );
  }


  Widget _getGalleryImagesScrollGrid() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          childCount: 10,
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
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          repeatPattern: QuiltedGridRepeatPattern.mirrored,
          pattern: [
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
          ],
        ),
      ),
    );
  }

  Widget _getSelectedImageContainer() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        width: double.infinity,
        height: 394,
        child: ClipRRect(
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              'images/item9.png',
            ),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
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
