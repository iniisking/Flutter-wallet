import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String appIconPath;
  final String buttonText;

  const MyButton({
    Key? key,
    required this.appIconPath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          height: 80,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 20,
                spreadRadius: 2,
              )
            ],
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(20),
          child: Center(child: Image.asset(appIconPath)),
        ),
        SizedBox(
          height: 10,
        ),

        //text
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
