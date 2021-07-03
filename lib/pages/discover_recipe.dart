import 'package:flutter/material.dart';
import 'package:projects/model/category_item.dart';
import 'package:projects/utils/navigator.dart';
import 'package:projects/widgets/banner.dart';
import 'package:projects/widgets/category/cat_active_btn.dart';
import 'package:projects/widgets/category/inactive_cat_btn.dart';
import 'package:projects/widgets/custom_appBar.dart';
import 'package:provider/provider.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    final Nav nav = Provider.of<Nav>(context);


    return Scaffold(
      body: Container(
        width: _size.width,
        height: _size.height,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: CustomAppBar(
                  title: '',
                )),
            Expanded(
                flex: 8,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      DiscoverBanner(),
                      SizedBox(height: 20),
                      categories(nav),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget categories(Nav nav) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Galano"),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < nav.categoryItems.length; i++)
              if (nav.categoryItems[i].index == nav.catIndex)
                CatActiveBtn(
                  title: nav.categoryItems[i].title,
                  uri: nav.categoryItems[i].uri,
                )
              else
                CatInActiveBtn(
                    uri: nav.categoryItems[i].uri,
                    title: nav.categoryItems[i].title,
                    onTap: () => setState(() {
                          nav.newCartIndex = nav.categoryItems[i].index;
                        }))
          ],
        )
      ],
    );
  }

  Widget catBody(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

      ],
    );
  }
}
