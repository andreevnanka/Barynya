import 'package:flutter/material.dart';
import 'package:barinya/main.dart';

class RegistrationName extends StatefulWidget {
  const RegistrationName({Key? key}) : super(key: key);

  @override
  _RegistrationNameState createState() => _RegistrationNameState();
}

class _RegistrationNameState extends State<RegistrationName> with SingleTickerProviderStateMixin {

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
          'Your Name',
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
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 30.0)),
                  Container(
                      width: 327,
                      child: Flexible(
                        child: TextField(
                          onChanged: (text) {Text('name');},
                          decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.all(15.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(const Radius.circular(12.0)),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                      )
                  ),
                  Padding(padding: MediaQuery.of(context).size.height <= 667 ? EdgeInsets.only(bottom: 465.0) : EdgeInsets.only(bottom: 542.0)),
                  Container(
                    width: 327,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/gender');
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
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}