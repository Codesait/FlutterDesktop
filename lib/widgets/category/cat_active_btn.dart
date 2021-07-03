import 'package:flutter/material.dart';

class CatActiveBtn extends StatelessWidget {
  const CatActiveBtn({Key? key,required this.uri,required this.title}) : super(key: key);
  final String uri;
  final String title;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.green,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 50
          )
        ],
        border: Border.all(
          color: Colors.grey.shade300
        )
      ),
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.only(right: 35,bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Image.asset(uri,height:20,width: 20,),
         SizedBox(height: 10),
         Text(title,style: TextStyle(fontFamily: "Galano",fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)
  ]
      ),
    );
  }
}
