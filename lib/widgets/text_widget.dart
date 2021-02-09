import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String textNumber;
  final String text;

  const TextWidget({
    Key key,
    @required this.textNumber,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textNumber,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23.0,
          ),
        ),
        Text(text),
      ],
    );
  }
}
