import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final visaColor;
  final color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.visaColor,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "VISA",
                style: TextStyle(color: visaColor, fontSize: 20),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Text(
              "Balance",
              style: TextStyle(color: Colors.purple[50], fontSize: 17),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Text(
              "\$" + balance.toString(),
              style: TextStyle(
                  color: Colors.purple[50],
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Text(
                  "**** " + cardNumber.toString(),
                  style: TextStyle(color: Colors.purple[50], fontSize: 17),
                ),
                //card expiry date
                Text(
                  expiryMonth.toString() + "/" + expiryYear.toString(),
                  style: TextStyle(color: Colors.purple[50], fontSize: 17),
                )
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
