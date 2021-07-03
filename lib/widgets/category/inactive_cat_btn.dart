import 'package:flutter/material.dart';

class CatInActiveBtn extends StatelessWidget {
  const CatInActiveBtn({Key? key,required this.uri,required this.title, required this.onTap}) : super(key: key);
  final String uri;
  final String title;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Colors.grey.shade300
          )
      ),
      margin: const EdgeInsets.only(right: 35),
      padding: const EdgeInsets.all(18),
      child:  InkWell(
        onTap: onTap,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(uri,height: 20,width: 20,),
                SizedBox(height: 10),
                Text(title, style: TextStyle(fontFamily: "Galano",fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black87),)
              ]
          ),
      ),

    );
  }
}
