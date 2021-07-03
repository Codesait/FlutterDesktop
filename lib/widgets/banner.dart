import 'package:flutter/material.dart';

class DiscoverBanner extends StatelessWidget {
   DiscoverBanner({Key? key}) : super(key: key);

 // generated star rating
 final List<Widget> star = List<Widget>.generate(5, (index) => Icon(
   Icons.star,color: Colors.yellow,
   size: 15,
 ));

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        banner(),
        SizedBox(width: 20,),
        bookMarkBox()
      ],
    );
  }


  // --------------------------- banner widget ------------------------
  Widget banner(){
    return  Flexible(
      flex: 5,
      child: Container(
        height: 210,
        width: double.infinity,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'assets/images/recipe.jpeg'
                )
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              color: Colors.white,
              child: Text('POPULAR',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            ),
            SizedBox(height: 10,),
            Text(
              'Vegan: Chicken & Chips\nwith Pancakes',
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 28,color: Colors.white),
            ),
            SizedBox(height: 10,),
            Container(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.access_time_rounded,color: Colors.white,),
                      Text(' 25 min',style: TextStyle(color: Colors.white,))
                    ],
                  ),
                  Row(
                    children: star,
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  // --------------------------- bookmark widget ------------------------
  Widget bookMarkBox(){
    return Flexible(
      flex: 1,
      child: Container(
        height: 210,
        color: Colors.green.withOpacity(0.3),
      ),
    );
  }



}
