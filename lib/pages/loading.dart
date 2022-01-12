import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:barinya/main.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

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
        centerTitle: true,
        title: Text(
          'Loading',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 327,
                  child: Text(
                    'Analysis of your characteristics and selection of a training program',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 214.0)),
                SpinKitFadingCircle(
                  color: Colors.deepOrange,
                  size: 76.0,
                ),
                Container(
                  width: 327,
                  height: 62,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/your-program');
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          backgroundColor: Colors.deepOrange,
                        ),
                      )
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