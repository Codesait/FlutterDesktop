import 'package:flutter/material.dart';
import 'package:projects/widgets/sideBar.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Row(
      children: [
        // Once our width is less then 1300 then it start showing errors
        // Now there is no error if our width is less then 1340
        Expanded(
          flex: _size.width > 1340 ? 1 : 2 ,
          child: SideBar(),
        ),
        Expanded(
          flex: _size.width > 1340 ? 5 : 10,
          child: Container(color: Colors.yellow,),
        ),
      ],
    );
  }
}
