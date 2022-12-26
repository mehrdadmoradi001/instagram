import 'dart:ui';

import 'package:flutter/material.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({Key? key}) : super(key: key);

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
          padding: EdgeInsets.all(40),
          child: Container(
            color: Color.fromRGBO(255, 255, 255, 0.09),
            height: 300,
            child: _getContent(),
          ),
        ),
      ),
    );
  }

  GridView _getContent() {
    return GridView.builder(
      itemCount: 30,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20
      ),
      itemBuilder: (BuildContext context, int index) => Container(  //
        child: Container(
          color: Colors.yellow,
        ),
      ),
    );
  }
}
