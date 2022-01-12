import 'package:flutter/material.dart';
import 'package:barinya/main.dart';
import 'package:flutter/cupertino.dart';


class RegistrationAge extends StatefulWidget {
  const RegistrationAge({Key? key}) : super(key: key);

  @override
  _RegistrationAgeState createState() => _RegistrationAgeState();
}

class _RegistrationAgeState extends State<RegistrationAge> {
  int _selectedValue = 0;

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
            'Your Age',
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
                  Padding (padding: EdgeInsets.only(top: 126.0)),
                  Container(
                    width: 318,
                    height: 316,
                    child: CupertinoPicker(
                      backgroundColor: Colors.white,
                      itemExtent: 30,
                      scrollController: FixedExtentScrollController(initialItem: 1),
                      children: [
                        Text('10'),
                        Text('11'),
                        Text('12'),
                        Text('13'),
                        Text('14'),
                        Text('15'),
                        Text('16'),
                        Text('17'),
                        Text('18'),
                        Text('19'),
                        Text('20'),
                        Text('21'),
                        Text('22'),
                        Text('23'),
                        Text('24'),
                        Text('25'),
                        Text('26'),
                        Text('27'),
                        Text('28'),
                        Text('29'),
                        Text('30'),
                        Text('31'),
                        Text('32'),
                        Text('33'),
                        Text('34'),
                        Text('35'),
                        Text('36'),
                        Text('37'),
                        Text('38'),
                        Text('39'),
                        Text('40'),
                        Text('41'),
                        Text('42'),
                        Text('43'),
                        Text('44'),
                        Text('45'),
                        Text('46'),
                        Text('47'),
                        Text('48'),
                        Text('49'),
                        Text('50'),
                        Text('51'),
                        Text('52'),
                        Text('53'),
                        Text('54'),
                        Text('55'),
                        Text('56'),
                        Text('57'),
                        Text('58'),
                        Text('59'),
                        Text('60'),
                        Text('61'),
                        Text('62'),
                        Text('63'),
                        Text('64'),
                        Text('65'),
                        Text('66'),
                        Text('67'),
                        Text('68'),
                        Text('69'),
                        Text('70'),
                        Text('71'),
                        Text('72'),
                        Text('73'),
                        Text('74'),
                        Text('75'),
                        Text('76'),
                        Text('77'),
                        Text('78'),
                        Text('79'),
                        Text('80'),
                        Text('81'),
                        Text('82'),
                        Text('83'),
                        Text('84'),
                        Text('85'),
                        Text('86'),
                        Text('87'),
                        Text('88'),
                        Text('89'),
                        Text('90'),
                        Text('91'),
                        Text('92'),
                        Text('93'),
                        Text('94'),
                        Text('95'),
                        Text('96'),
                        Text('97'),
                        Text('98'),
                        Text('99'),
                        Text('100'),
                      ],
                      onSelectedItemChanged: (value) {
                        setState(() {
                          _selectedValue = value;
                        });
                        },
                    ),
                  ),
                  Padding(padding: MediaQuery.of(context).size.height <= 667 ? EdgeInsets.only(bottom: 101.0) : EdgeInsets.only(bottom: 180.0)),
                  Container(
                    width: 327,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/goals');
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
        )
    );
  }
}