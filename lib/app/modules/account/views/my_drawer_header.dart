import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  late final String userName;
  late final String imageUrl;
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
  MyHeaderDrawer({required this.userName, required this.imageUrl});
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE56A36),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(widget.imageUrl),
          ),
          Text(
            widget.userName,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "Welcome to Phone Store",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
