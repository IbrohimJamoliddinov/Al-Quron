import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextSwitch extends StatefulWidget {
  final String text;
  final bool status;
  final Function(bool selected) selected;
  final EdgeInsets marginBox;
  final EdgeInsets paddingBox;
  final BorderRadius boxBorderRadius;
  final Color boxColor;

  TextSwitch({
    required this.text,
    required this.selected,
    this.marginBox = const EdgeInsets.only(right: 24, left: 24),
    this.paddingBox = const EdgeInsets.only(right: 16, left: 16),
    this.boxColor = const Color.fromRGBO(0, 0, 0, 0),
    required this.boxBorderRadius,
    required this.status,
  });

  @override
  _TextSwitchState createState() => _TextSwitchState();
}

class _TextSwitchState extends State<TextSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.paddingBox,
      margin: widget.marginBox,
      decoration: BoxDecoration(
        color: widget.boxColor,
        borderRadius: widget.boxBorderRadius,
      ),
      child: Row(
        children: [
          Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFF3D3D3D),
              letterSpacing: 0.2,
            ),
          ),
          Spacer(),
          GestureDetector(
            child: CupertinoSwitch(
              value: widget.status,
              onChanged: (bool value) {
                widget.selected(value);
              },
            ),
            onTap: () {
              setState(() {
                widget.selected(!widget.status);
              });
            },
          ),
        ],
      ),
    );
  }
}
