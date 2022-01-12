import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:barinya/main.dart';
import 'package:flutter/rendering.dart';

class Day1Program1 extends StatefulWidget {
  const Day1Program1({Key? key}) : super(key: key);

  @override
  _Day1Program1State createState() => _Day1Program1State();
}

class _Day1Program1State extends State<Day1Program1> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.deepOrange,)
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Settings    ',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Personal program',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 27.0)),
                  Container(
                      width: 273,
                    child: Text(
                      'Barynya - an affordable way to keep yourself in good shape at any age, anywhere in the world',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 27.0)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image(
                      image: AssetImage('assets/video_stop.jpg'),
                      height: 152,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 18.0)),
                  Container(
                    width: 273,
                    child: Text(
                      'Study of cheekbones, nasolabial, facial oval,     lymph acceleration, neck massage, sculpting of cheekbones',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 24.0)),
                  Container(
                    width: 327,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(16.0)
                    ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/exercise1');
                        },
                        icon: Icon(Icons.play_arrow_rounded),
                        iconSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  Padding(padding: MediaQuery.of(context).size.height <= 667 ? EdgeInsets.only(bottom: 25.0) : EdgeInsets.only(bottom: 30.0)),
                  Container(
                    width: 327,
                    padding: EdgeInsets.only(top: 24.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.solid
                        )
                      )
                    ),
                    child: Text(
                      'Additional exercises',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(padding: MediaQuery.of(context).size.height <= 667 ? EdgeInsets.only(bottom: 19.0) : EdgeInsets.only(bottom: 24.0)),
                  Container(
                    width: 327,
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                // Column(
                                //   children: [ ClipRRect(
                                //     borderRadius: BorderRadius.circular(16.0),
                                //     child: Image(
                                //       image: AssetImage('assets/asia.jpg'),
                                //       height: 100,
                                //     ),
                                //   ),
                                //     Text(
                                //       'Asia beauty',
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 12,
                                //           fontWeight: FontWeight.w600
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                // Padding(padding: EdgeInsets.only(right: 12.0)),
                                // Column(
                                //   children: [
                                //     ClipRRect(
                                //       borderRadius: BorderRadius.circular(16.0),
                                //       child: Image(
                                //         image: AssetImage('assets/paris.jpg'),
                                //         height: 100,
                                //       ),
                                //     ),
                                //     Text(
                                //       'Paris Chic',
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 12,
                                //           fontWeight: FontWeight.w600
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                // Padding(padding: EdgeInsets.only(right: 12.0)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(16.0),
                                        child: Image(
                                          image: AssetImage('assets/asia.jpg'),
                                          height: 100,
                                        ),
                                      ),
                                    Padding(padding: EdgeInsets.only(bottom: 6.0)),
                                    Text(
                                      'Asia beauty',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(right: 12.0)),
                                Column(
                                  children: [
                                   ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image(
                                      image: AssetImage('assets/paris.jpg'),
                                      height: 100,
                                    ),
                                  ),
                                    Padding(padding: EdgeInsets.only(bottom: 6.0)),
                                    Text(
                                      'Paris Chic',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                        )
                      ],
                    ),
                    // child: ListView(
                    //       scrollDirection: Axis.horizontal,
                    //       children: <Widget>[
                    //         ClipRRect(
                    //           borderRadius: BorderRadius.circular(16.0),
                    //           child: Image(
                    //             image: AssetImage('assets/video_stop.jpg'),
                    //             height: 152,
                    //           ),
                    //         ),
                    //         ClipRRect(
                    //           borderRadius: BorderRadius.circular(16.0),
                    //           child: Image(
                    //             image: AssetImage('assets/video_stop.jpg'),
                    //             height: 152,
                    //           ),
                    //         ),
                    //         ClipRRect(
                    //           borderRadius: BorderRadius.circular(16.0),
                    //           child: Image(
                    //             image: AssetImage('assets/video_stop.jpg'),
                    //             height: 152,
                    //           ),
                    //         ),
                    //       ]
                    //   ),
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}