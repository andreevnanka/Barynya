import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barinya/main.dart';

class RegistrationGender extends StatefulWidget {
  const RegistrationGender({Key? key}) : super(key: key);

  @override
  _RegistrationGenderState createState() => _RegistrationGenderState();
}

class _RegistrationGenderState extends State<RegistrationGender>{
  Color _favColor1 = Colors.white;
  Color _favColor2 = Colors.white;
  Color _favColor3 = Colors.white;

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
          'Your Gender',
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
      body:
      SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 30.0)),
                  Container(
                    width: 327,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: _favColor1),
                    ),
                    child: OutlinedButton(
                      child: Text(
                          'Female',
                          style: TextStyle(
                            color: _favColor1,
                          )
                      ),
                      onPressed: () {
                        setState(() {
                          if(_favColor1 == Colors.white) {
                            _favColor2 = Colors.white;
                            _favColor3 = Colors.white;
                            _favColor1 = Colors.deepOrange;} else{
                            _favColor1 = Colors.white;
                          }
                        });
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12.0)),
                  Container(
                    width: 327,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: _favColor2),
                    ),
                    child: OutlinedButton(
                      child: Text(
                          'Male',
                          style: TextStyle(
                            color: _favColor2,
                          )
                      ),
                      onPressed: () {
                        setState(() {
                          if(_favColor2 == Colors.white) {
                            _favColor1 = Colors.white;
                            _favColor3 = Colors.white;
                            _favColor2 = Colors.deepOrange;} else{
                            _favColor2 = Colors.white;
                          }
                        });
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12.0)),
                  Container(
                    width: 327,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: _favColor3),
                    ),
                    child: OutlinedButton(
                      child: Text(
                          'Other',
                          style: TextStyle(
                            color: _favColor3,
                          )
                      ),
                      onPressed: () {
                        setState(() {
                          if(_favColor3 == Colors.white) {
                            _favColor1 = Colors.white;
                            _favColor2 = Colors.white;
                            _favColor3 = Colors.deepOrange;} else{
                            _favColor3 = Colors.white;
                          }
                        });
                      },
                    ),
                  ),
                  Padding(padding: MediaQuery.of(context).size.height <= 667 ? EdgeInsets.only(bottom: 339.0) : EdgeInsets.only(bottom: 418.0)),
                  Container(
                    width: 327,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/problem-zone');
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
              )
            ],
          )
      ),
    );
  }
}