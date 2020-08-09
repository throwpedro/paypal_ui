import 'package:flutter/material.dart';
import 'package:paypal_ui/top_card.dart';
import 'package:paypal_ui/bottom_entry.dart';
import 'package:paypal_ui/bottom_bar.dart';

void main() {
  runApp(MaterialApp(home: PaypalUi()));
}

class PaypalUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          TopCard(),
          Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              bottom: 16.0,
              right: 16.0,
            ),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.0,
                      top: 16.0,
                      bottom: 10.0,
                    ),
                    child: Text(
                      'Recent Activity',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  BottomEntry(
                    title: 'Netflix.com',
                    date: '1 Aug',
                    paymentType: 'Automatic payment',
                    price: '- 7,99 EUR',
                  ),
                  BottomEntry(
                    title: 'Spotify Finance Limited',
                    date: '23 Jul',
                    paymentType: 'Automatic payment',
                    price: '- 149,00 DKK',
                  ),
                  BottomEntry(
                    title: 'Hetzner Online GmbH',
                    date: '23 Jul',
                    paymentType: 'Purchase',
                    price: '- 24,37 EUR',
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Icon(
                        Icons.menu,
                        color: Colors.blueAccent,
                      ),
                    ),
                    title: Text(
                      'View all activity',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Icon(
        Icons.notifications,
        color: Colors.black,
      ),
      title: Icon(
        Icons.credit_card,
        color: Colors.black,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
