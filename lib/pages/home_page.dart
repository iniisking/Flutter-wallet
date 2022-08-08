import 'package:bankapp/utilities/my_buttons.dart';
import 'package:bankapp/utilities/my_cards.dart';
import 'package:bankapp/utilities/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          //appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "My ",
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Cards",
                      style: TextStyle(fontSize: 28.0),
                    ),
                  ],
                ),

                //plus button

                Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: Icon(Icons.add)),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          //cards
          // ignore: prefer_const_constructors
          Container(
            height: 204,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 5250,
                  cardNumber: 3456,
                  expiryMonth: 11,
                  expiryYear: 24,
                  visaColor: Colors.purple[100],
                  color: Colors.deepPurple[400],
                ),
                MyCard(
                  balance: 430,
                  cardNumber: 3456,
                  expiryMonth: 11,
                  expiryYear: 24,
                  visaColor: Colors.blue[100],
                  color: Colors.blue[400],
                ),
                MyCard(
                  balance: 109,
                  cardNumber: 3456,
                  expiryMonth: 11,
                  expiryYear: 24,
                  visaColor: Colors.green[100],
                  color: Colors.green[400],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //smooth page indicator
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade600),
          ),

          SizedBox(
            height: 25,
          ),

          //3 buttons: send pay bills

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton(appIconPath: "lib/icons/send.png", buttonText: "Send"),
              MyButton(
                  appIconPath: "lib/icons/credit-card.png", buttonText: "Pay"),
              MyButton(appIconPath: "lib/icons/bill.png", buttonText: "Bills")
            ],
          ),
          SizedBox(
            height: 40,
          ),

          //column: statistics transactions

          Column(
            children: [
              MyListTile(
                  iconPath: "lib/icons/analysis.png",
                  listTitle: "Statistics",
                  listSubTitle: "Payments and Income"),
              SizedBox(
                height: 20,
              ),
              MyListTile(
                  iconPath: "lib/icons/transaction.png",
                  listTitle: "Transactions",
                  listSubTitle: "Transaction History")
            ],
          )
        ]),
      ),
    );
  }
}
