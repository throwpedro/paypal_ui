import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 9,
      color: Colors.white,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.blueAccent,
                    size: 50,
                  ),
                  Text(
                    'Scan/Pay',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.blueAccent,
                    size: 50,
                  ),
                  Text(
                    'Send',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(
                    Icons.cloud_circle,
                    color: Colors.blueAccent,
                    size: 50,
                  ),
                  Text(
                    'Request',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Icon(
                        Icons.remove_circle_outline,
                        color: Colors.blueAccent,
                        size: 50,
                      ),
                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'More',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
