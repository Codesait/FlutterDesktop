import 'package:flutter/material.dart';
import 'package:projects/utils/responsive_layout_builder.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: Container(color: Colors.blue),
        tablet: Container(color: Colors.deepPurple,),
        desktop: Container(color: Colors.green),
      ),
    );
  }
}
