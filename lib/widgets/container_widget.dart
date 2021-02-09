import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Color color;
  final Widget icon;

  const ContainerWidget({@required this.color, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      child: Center(
        child: icon,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
