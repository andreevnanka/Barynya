import 'package:flutter/material.dart';

class ProblemZone extends StatefulWidget {
  const ProblemZone({Key? key}) : super(key: key);

  @override
  _ProblemZoneState createState() => _ProblemZoneState();
}

class _ProblemZoneState extends State<ProblemZone> {
  List<CheckBoxListTileModel> checkBoxListTileModel = CheckBoxListTileModel.getUsers();
  //  bool isChecked = false;
  // class CheckBoxListTileModel {
  //   int userId;
  //   String title;
  //   bool isCheck;
  // //
  // // CheckBoxListTileModel({required this.userId, required this.title,required this.isCheck});
  // //
  // static List<CheckBoxListTileModel> getUsers() {
  //   return <CheckBoxListTileModel>[
  //     CheckBoxListTileModel(
  //         userId: 1,
  //         title: "Chin",
  //         isCheck: true
  // ),]
  // }

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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              /* Генератор карточек */
              new ListView.builder(
                  itemCount: checkBoxListTileModel.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            new CheckboxListTile(
                                activeColor: Colors.deepOrange,
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
                  })
            ],
          )
        ],
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