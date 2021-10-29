import 'package:flutter/cupertino.dart';

class MenuWidget extends StatelessWidget {
  String name;
  double widthBox;
  double heightBox;
  EdgeInsets marginBox;

  MenuWidget({
    required this.name,
    required this.widthBox,
    required this.heightBox,
    this.marginBox = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBox,
      padding: EdgeInsets.only(
        top: 10,
        left: 16,
      ),
      width: widthBox,
      height: heightBox,
      decoration: BoxDecoration(
        color: Color(0xFFE2E2E2),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Text(
        name,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.2,
          color: Color(0xFF6E6E6E),
        ),
      ),
    );
  }
}
