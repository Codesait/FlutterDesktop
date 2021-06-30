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
                color: Colors.white70,
              )
          )
        ],
      ),
    );
  }
}
