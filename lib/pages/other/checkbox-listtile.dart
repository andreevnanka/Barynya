import 'package:flutter/material.dart';


class CheckBoxListTileDemo extends StatefulWidget {
  @override
  CheckBoxListTileDemoState createState() => new CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
          itemCount: checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new Container(
                padding: new EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    new CheckboxListTile(
                        activeColor: Colors.deepOrange,
                        dense: true,
                        //font change
                        title: new Text(
                          checkBoxListTileModel[index].title,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        value: checkBoxListTileModel[index].isCheck,
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxListTileModel[index].isCheck = value!;
                          });
                        })
                  ],
                ),
              ),
            );
          });
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

  CheckBoxListTileModel({required this.userId, required this.title, required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
    CheckBoxListTileModel(
          userId: 1,
          title: "Chin",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          title: "Eyes",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          title: "Neck",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          title: "Сheekbones",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          title: "Сheeks",
          isCheck: false),
    CheckBoxListTileModel(
          userId: 6,
          title: "Jaw line",
          isCheck: false),
    CheckBoxListTileModel(
          userId: 7,
          title: "Forehead",
          isCheck: false),
    ];
  }
}