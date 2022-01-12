import 'package:flutter/material.dart';
import 'package:barinya/main.dart';

class ProblemZone extends StatefulWidget {
  const ProblemZone({Key? key}) : super(key: key);

  @override
  _ProblemZoneState createState() => _ProblemZoneState();
}

class _ProblemZoneState extends State<ProblemZone> {
  List<CheckBoxListTileModel> checkBoxListTileModel = CheckBoxListTileModel.getUsers();

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
          'Your Problem Zone',
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
                  'Help',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListView.builder(
                        //itemCount: checkBoxListTileModel.length,
                          itemBuilder: (BuildContext context, int index) {
                            return new Card(
                              child: new Container(
                                //padding: new EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    new CheckboxListTile(
                                      activeColor: Colors.deepOrange,
                                      dense: true,
                                      //font change
                                      title: new Text(
                                        checkBoxListTileModel[index].title,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,),
                                      ),
                                      value: checkBoxListTileModel[index].isCheck,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          checkBoxListTileModel[index].isCheck = value!;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 100.0)),
                Container(
                  width: 327,
                  height: 62,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, sixthScreen);
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
        ),
      ),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}

class CheckBoxListTileModel {
  int userId;
  String title;
  bool isCheck;

  CheckBoxListTileModel({required this.userId, required this.title,required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          title: "Android",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          title: "Flutter",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          title: "IOS",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          title: "PHP",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          title: "Node",
          isCheck: false),
    ];
  }
}