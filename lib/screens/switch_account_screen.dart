import 'dart:ui';

import 'package:flutter/material.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('images/switch_account_background.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180,
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 3,
                          sigmaY: 3,
                        ),
                        child: Container(
                          width: 340,
                          height: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 0.5), //
                                Color.fromRGBO(255, 255, 255, 0.2),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 32),
                              Container(
                                width: 129,
                                height: 129,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/phototest.jpg'),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'MehrdadMoradi001',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              SizedBox(height: 20),
                              SizedBox(
                                height: 46,
                                width: 129,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Confirm'),
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'switch account',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.0, bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have an account? / ',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontFamily: 'GB'),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, fontFamily: 'GB'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
