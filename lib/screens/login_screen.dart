import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    negahban1.addListener(() {
      setState(() {

      });
    });
    negahban2.addListener(() {
      setState(() {

      });
    });
  }

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
                SizedBox(
                  height: 50,
                ),
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
                ),
                SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    focusNode: negahban1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 18,
                          color: negahban1.hasFocus ? Color(0xffF35383) : Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xffC5C5C5), width: 3.0), //
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0xffF35383),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    focusNode: negahban2,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 18,
                          color: negahban2.hasFocus ? Color(0xffF35383) : Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide:
                        BorderSide(color: Color(0xffC5C5C5), width: 3.0), //
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0xffF35383),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
