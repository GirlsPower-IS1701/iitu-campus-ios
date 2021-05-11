
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

class HeadingBar extends StatelessWidget {
  // HeadingBar ({
  //   @required this.title,
  //   @required this.subtitle,
  // });
  // final String title;
  // final String subtitle;

  @override 
  Widget build (BuildContext context) {
    return Padding (
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                        // Text(title),
                        // Text(subtitle),
                      ],
                    ),
                  ],
                )
          ),    ],  ),
    );
  }
}