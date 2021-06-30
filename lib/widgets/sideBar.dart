import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.green,
            )
          ),
          Expanded(
              child: Container(
                color: Colors.blueGrey,
              )
          )
        ],
      ),
    );
  }
}
