import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconPath;
  final String listTitle;
  final String listSubTitle;

  const MyListTile({
    Key? key,
    required this.iconPath,
    required this.listTitle,
    required this.listSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          iconPath,
          height: 60,
        ),
        Column(children: [
          Text(
            listTitle,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                letterSpacing: 1,
                color: Colors.grey[700]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            listSubTitle,
            style: TextStyle(
              fontSize: 17,
              letterSpacing: 1,
              color: Colors.grey[700],
            ),
          ),
        ]),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey[700],
        ),
      ],
    );
  }
}
