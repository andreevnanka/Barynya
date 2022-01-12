import 'package:flutter/material.dart';
import 'package:barinya/main.dart';

class IndividualProgramm extends StatefulWidget {
  const IndividualProgramm({Key? key}) : super(key: key);

  @override
  _IndividualProgrammState createState() => _IndividualProgrammState();
}

class _IndividualProgrammState extends State<IndividualProgramm> with SingleTickerProviderStateMixin {

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
                  'Help      ',
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
              children: [
                Text(
                  '1 562 women have undergone our rejuvenation program',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 24.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image(
                            image: AssetImage('assets/unhappy_woman.jpg'),
                            height: 152,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 16.0)),
                        Text(
                          'Before',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 24.0)),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image(
                            image: AssetImage('assets/happy_woman.jpg'),
                            height: 152,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 16.0)),
                        Text(
                          'After',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(bottom: 78.0)),
                Container(
                  width: 300,
                  child: Text(
                    'Your personal programm     is already ready',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 60.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Try 3 days for Free',
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 12.0)),
                        Container(
                          width: 327,
                          height: 62,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/programm-first-screen');
                              },
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  backgroundColor: Colors.deepOrange,
                                ),
                              )
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 12.0)),
                        Text(
                          '3 days free, 399/week later',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('Conditions & Terms'),
                        Text('Privacy Policy'),
                        Text('Restore purchases'),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}