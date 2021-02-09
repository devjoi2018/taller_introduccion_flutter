import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  final String url;

  const PhotoWidget({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
      color: Colors.teal[100],
    );
  }
}
