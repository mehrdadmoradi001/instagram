import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff323A99),
            Color(0xffF98BFC),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter, //
          children: [
            _getImageContainer(),
            _getContainerBox(),
          ],
        ),
      ),
    );
  }

  Widget _getImageContainer() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 40,
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('images/rocket.png'),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _getContainerBox() {
    return Column(
      children: [
        Expanded(child: Container()),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xff1C1F2E),
            ),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sing in to ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Image(
                      image: AssetImage('images/mood.png'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
