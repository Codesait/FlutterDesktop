import 'package:flutter/material.dart';
import 'package:projects/utils/navigator.dart';
import 'package:projects/widgets/side_menu_items/active_buttons.dart';
import 'package:projects/widgets/side_menu_items/inactive_buttons.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {

  Nav nav = Nav();
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(27),
              color: Color(0xFF010529),
              width: double.infinity,
              child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Plan',
                              style: TextStyle(
                                fontFamily: "Galano",
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              )
                            ),

                            TextSpan(
                                text: 'life',
                                style: TextStyle(
                                    fontFamily: "Galano",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 18
                                )
                            )
                          ]
                        )
                    ),
                    Text(
                      'Healthy meals,healthy life.',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white70,
                        fontFamily: "Galano"
                      ),
                    ),
                    SizedBox(height:30),

                    SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)
                          )
                        ),
                          onPressed: (){},
                          child: Text('+  Create Now',style: TextStyle(fontSize: 10),)
                      ),
                    )
                  ],
                ),
              ),
            ),
          Expanded(
            flex: 8,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[

                    // menu side bar items
                    Expanded(
                      flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(left: 25),
                                margin: const EdgeInsets.only(top: 15,bottom: 10),
                                child: Text(
                                  'MENU',
                                  style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.w600),

                                )),

                            // menu side bar items
                            for(var i = 0; i < nav.navMenuItems.length; i++ )
                              if(nav.navMenuItems[i].index == currentIndex)
                                ActiveNavButton(nav.navMenuItems[i])
                              else
                                InactiveNavButton(nav.navMenuItems[i])


                          ],
                        )
                    ),

                    // profile side bar items
                    Expanded(
                      flex: 5,
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(left: 25),
                                margin: const EdgeInsets.only(top: 15,bottom: 10),
                                child: Text(
                                  'YOUR ACCOUNT',
                                  style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.w600),

                                )),

                            // menu side bar items
                            for(var i = 0; i < nav.navProfileItems.length; i++ )
                              if(nav.navProfileItems[i].index == currentIndex)
                                ActiveNavButton(nav.navProfileItems[i])
                              else
                                InactiveNavButton(nav.navProfileItems[i])


                          ],
                        )
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}


