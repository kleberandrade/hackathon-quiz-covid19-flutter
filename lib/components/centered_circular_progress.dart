import 'package:flutter/material.dart';

class CenteredCircularProgress extends StatelessWidget {
  final String message;
  final double loadingSize;
  final double fontSize;

  CenteredCircularProgress({
    this.message,
    this.loadingSize = 64.0,
    this.fontSize = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: loadingSize,
            width: loadingSize,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              message,
              style: TextStyle(
                  color: Colors.white38,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}
