library flutter_empty_illustration;

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomNoInternetWidget extends StatelessWidget {
  CustomNoInternetWidget({
    Key? key,
    this.lable = _textWidget,
    this.imageWidget,
  }) : super(key: key);

  /// Text Widget [Widget] which will be displayed on the screen
  final Widget lable;

  ///Image [Widget] which will be displayed on the screen
  final Widget? imageWidget;

  /// type pf [Color] used to change the checkcolor when the radio button is active
  final Color backgroundColor = Colors.white;

  static const Widget _textWidget = Text(
    "No Internet Connection",
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 18.0, color: Colors.black54, fontWeight: FontWeight.bold),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              imageWidget ??
                  Lottie.asset('assets/NO_INTERNET.json',
                      //package: 'flutter_empty_illustration',
                      width: 450,
                      fit: BoxFit.cover),
              const SizedBox(height: 20, width: 20),
              lable,
            ],
          ),
        ));
  }
}
