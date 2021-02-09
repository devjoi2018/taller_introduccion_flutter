import 'package:flutter/material.dart';

class ButtomWidget extends StatelessWidget {
  final Widget text;
  final Color color;
  final BoxBorder border;
  final Function onTap;

  const ButtomWidget({
    Key key,
    this.text,
    this.color,
    this.border,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50.0,
        width: 150.0,
        child: Center(child: text),
        decoration: BoxDecoration(
          border: border,
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onTap: onTap,
    );
  }
}
