
import 'package:flutter/material.dart';
import 'package:projects/model/side_menu_nav_item.dart';

class ActiveNavButton extends StatelessWidget {
  const ActiveNavButton(this._sideNavItem, {Key? key} ) : super(key: key);

  final SideNavItem _sideNavItem;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: InkWell(
          onTap: (){

          },
          child: Container(
            padding: const EdgeInsets.only(left: 25),
            height: 33.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      _sideNavItem.icons,
                      size: 14,
                      color: Colors.green.shade600,
                    ),
                    SizedBox(width: 10),
                    Text(_sideNavItem.title,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.green.shade600)),
                  ],
                ),

                VerticalDivider(
                  thickness: 2,
                  color: Colors.green.shade600,
                )
              ],
            ),
          ),
        )
    );
  }
}
