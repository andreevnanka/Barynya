import 'package:flutter/material.dart';
import 'package:barinya/main.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPage createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  bool liftingIsChecked = false;
  bool detoxIsChecked = false;
  bool skinHydrationIsChecked = false;
  bool sculptingIsChecked = false;
  bool removalOfEdemaIsChecked = false;
  bool rejuvenationIsChecked = false;
  bool volumeReductionIsChecked = false;

  bool isButtonPressed = false;
  bool showBox = false;

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
          'Settings',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Container(
                // child: Button,
              )
            ],
          )
        ],
      ),
    );
  }
}