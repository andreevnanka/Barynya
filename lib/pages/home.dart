import 'package:flutter/material.dart';
import 'package:barinya/main.dart';


class BarynyaHome extends StatefulWidget {
  const BarynyaHome({Key? key}) : super(key: key);

  @override
  _BarynyaHomeState createState() => _BarynyaHomeState();
}

class _BarynyaHomeState extends State<BarynyaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/barynya_logo.jpg'),
                  height: 200,
                ),
                Padding(padding: EdgeInsets.only(bottom: 62.6)),
                Container(
                  width: 270,
                  child: Text(
                      'Welcome in Barynya. Face Lifting App',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 30.0)),
                Container(
                  width: 260,
                  child: Text(
                    'Barynya - an affordable way to keep yourself      in good shape at any age, anywhere in the world ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                    ),
                  ),
                ),
                Padding(padding: MediaQuery.of(context).size.height <= 667 ? EdgeInsets.only(bottom: 160.0) : EdgeInsets.only(bottom: 186.0)),
                Container(
                  width: 327,
                  height: 62,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/mail');
                    },
                    child:
                    Text(
                      "Confirm",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        backgroundColor: Colors.deepOrange,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}