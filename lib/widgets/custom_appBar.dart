import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,required this.title}) : super(key: key);
  final String title ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Discover Recipe',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 27),),
          Flexible(
            child: Container(
              width: 400,
              height: 40,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300
                ),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 20,
                  ),
                  Text(
                    'Search for Recipes,Ingredients and Tags',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
