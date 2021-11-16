import 'package:flutter/cupertino.dart';

class TitleWidget extends StatelessWidget {
  final String textLeft;
  final Color colorLeft;
  final double leftSize;
  final String textRight;
  final Color colorRight;
  final double rightSize;
  final EdgeInsets margin;

  TitleWidget({
    this.textLeft = "",
    this.colorLeft = const Color.fromRGBO(6, 6, 6, 0),
    this.textRight = "",
    this.colorRight = const Color.fromRGBO(23, 23, 23, 0,),
    this.margin = const EdgeInsets.symmetric(
      horizontal: 24,
    ),
    this.leftSize = 0,
    this.rightSize = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          Text(
            textLeft,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: leftSize,
              color: colorLeft,
              letterSpacing: 0.2,
            ),
          ),
          Spacer(),
          Text(
            textRight,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: rightSize,
              color: colorRight,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
