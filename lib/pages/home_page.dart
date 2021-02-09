import 'package:flutter/material.dart';
import 'package:flutter_introduction_taller/widgets/buttom_widget.dart';
import 'package:flutter_introduction_taller/widgets/container_widget.dart';
import 'package:flutter_introduction_taller/widgets/photo_widget.dart';
import 'package:flutter_introduction_taller/widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  static final routeName = 'homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyHomePage(context),
    );
  }

  Widget _bodyHomePage(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.arrow_back),
          ),
          Center(
            child: CircleAvatar(
              maxRadius: 90.0,
              backgroundImage: NetworkImage('https://cutt.ly/ykRh38H'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Catherine Massey',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('UI/UX Designer | Daily'),
          SizedBox(
            height: 20.0,
          ),
          _buttoms(context),
          SizedBox(
            height: 20.0,
          ),
          _dataUser(context),
          SizedBox(
            height: 20.0,
          ),
          _buttomsWidets(context),
          SizedBox(
            height: 20.0,
          ),
          _gridWidget(context),
        ],
      ),
    );
  }

  Widget _buttoms(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ContainerWidget(
          color: Color(0xffffeef4),
          icon: Icon(Icons.ac_unit),
        ),
        ContainerWidget(
          color: Color(0xffe9f1ff),
          icon: Icon(Icons.access_alarms),
        ),
        ContainerWidget(
          color: Color(0xfff7f8f3),
          icon: Icon(Icons.ac_unit_rounded),
        ),
        ContainerWidget(
          color: Color(0xffe9f8ff),
          icon: Icon(Icons.accessibility_new_rounded),
        ),
      ],
    );
  }

  Widget _dataUser(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextWidget(
          textNumber: '80',
          text: 'Posts',
        ),
        TextWidget(
          textNumber: '110',
          text: 'Followers',
        ),
        TextWidget(
          textNumber: '152',
          text: 'Following',
        ),
      ],
    );
  }

  Widget _buttomsWidets(BuildContext context) {
    var _borderStyle = BorderSide(color: Colors.blueAccent, width: 1.0);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtomWidget(
          text: Text(
            'Message',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 22.0,
            ),
          ),
          border: Border(
            bottom: _borderStyle,
            left: _borderStyle,
            right: _borderStyle,
            top: _borderStyle,
          ),
          onTap: () {
            print('Boton Blanco');
          },
        ),
        ButtomWidget(
          color: Colors.blueAccent,
          text: Text(
            'Follow',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onTap: () {
            print('Boton Azul');
          },
        ),
      ],
    );
  }

  Widget _gridWidget(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          PhotoWidget(
            url: 'https://cutt.ly/kkRkb78',
          ),
          PhotoWidget(
            url: 'https://cutt.ly/HkRkEed',
          ),
          PhotoWidget(
            url: 'https://cutt.ly/VkRkYeE',
          ),
          PhotoWidget(
            url: 'https://cutt.ly/2kRkPq9',
          ),
          PhotoWidget(
            url: 'https://cutt.ly/8kRkGy5',
          ),
          PhotoWidget(
            url: 'https://cutt.ly/6kRkKV8',
          ),
        ],
      ),
    );
  }
}
