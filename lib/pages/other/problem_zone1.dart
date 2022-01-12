import 'package:flutter/material.dart';
import 'package:barinya/main.dart';

// class ProblemZone extends StatefulWidget {
//   const ProblemZone({Key? key}) : super(key: key);
//
//   @override
//   _ProblemZoneState createState() => _ProblemZoneState();
// }
//
// class _ProblemZoneState extends State<ProblemZone> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back_ios, color: Colors.deepOrange,)
//         ),
//         centerTitle: true,
//         title: Text(
//           'Your Gender',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         actions: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               InkWell(
//                 onTap: () {},
//                 child: Text(
//                   'Help',
//                   style: TextStyle(
//                     color: Colors.deepOrange,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   child: Column(
//                     children: [
//                       CheckListWidget(),
//                       CheckListWidget(),
//                       CheckListWidget(),
//                       CheckListWidget(),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: 327,
//                   height: 62,
//                   decoration: BoxDecoration(
//                     color: Colors.deepOrange,
//                     borderRadius: BorderRadius.circular(16.0),
//                   ),
//                   child: TextButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, sixthScreen);
//                       },
//                       child: Text(
//                         'Next',
//                         style: TextStyle(
//                           fontSize: 14.0,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600,
//                           backgroundColor: Colors.deepOrange,
//                         ),
//                       )
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // class LabeledCheckbox extends StatefulWidget {
// //   const LabeledCheckbox({
// //     Key? key,
// //     required this.label,
// //     required this.padding,
// //     required this.value,
// //     required this.onChanged,
// //   }) : super(key: key);
// //
// //   final String label;
// //   final EdgeInsets padding;
// //   final bool value;
// //   final Function onChanged;
// //
// //   @override
// //   _LabeledCheckboxState createState() => _LabeledCheckboxState();
// // }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return InkWell(
// //       onTap: () {onChanged(!value);},
// //       child: Row(
// //         children: <Widget>[
// //           Expanded(child: Text(label)),
// //           Checkbox(
// //             value: value,
// //             onChanged: (bool? newValue) {
// //               onChanged(newValue);
// //               },
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// class CheckListWidget extends StatefulWidget {
//   const CheckListWidget({Key? key}) : super(key: key);
//
//   @override
//   _CheckListWidgetState createState() => _CheckListWidgetState();
// }
//
// class _CheckListWidgetState extends State<CheckListWidget> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     Color getColor(Set<MaterialState> states) {
//       const Set<MaterialState> interactiveStates = <MaterialState>{
//         MaterialState.pressed,
//         MaterialState.hovered,
//         MaterialState.focused,
//       };
//       if (states.any(interactiveStates.contains)) {
//         return Colors.blue;
//       }
//       return Colors.red;
//     }
//
//     return Checkbox(
//       checkColor: Colors.white,
//       fillColor: MaterialStateProperty.resolveWith(getColor),
//       value: isChecked,
//       onChanged: (bool? value) {
//         setState(() {
//           isChecked = value!;
//         });
//       },
//     );
//   }
// }

class ProblemZone extends StatefulWidget {
  const ProblemZone({Key? key}) : super(key: key);

  @override
  _ProblemZoneState createState() => _ProblemZoneState();
}

class _ProblemZoneState extends State<ProblemZone> {
  //List<CheckBoxListTileModel> checkBoxListTileModel = CheckBoxListTileModel.getUsers();
  bool isChecked = false;

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
                    child:
                      ListView.builder(
                        //itemCount: checkBoxListTileModel.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: InkWell (
                                customBorder: Border.all(color: Colors.white),
                                  child: Checkbox(
                                    checkColor: Colors.white,
                                    fillColor: MaterialStateProperty.resolveWith(getColor),
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                onTap: () {},
                            ),
                              // Container(
                              //   //padding: new EdgeInsets.all(10.0),
                              //   child: Column(
                              //     children: <Widget>[
                              //       CheckboxListTile(
                              //         activeColor: Colors.deepOrange,
                              //         dense: true,
                              //         //font change
                              //         title: new Text(
                              //           //checkBoxListTileModel[index].title,
                              //           'Face',
                              //           style: TextStyle(
                              //             fontSize: 16,
                              //             fontWeight: FontWeight.w600,),
                              //         ),
                              //         value: false,//checkBoxListTileModel[index].isCheck,
                              //         onChanged: (bool? value) {
                              //           setState(() {
                              //             value = value!;
                              //           });
                              //         },
                              //       )
                              //     ],
                              //   ),
                              // ),
                            );
                          })
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

//   void itemChange(bool val, int index) {
//     setState(() {
//       checkBoxListTileModel[index].isCheck = val;
//     });
//   }
// }
//
// class CheckBoxListTileModel {
//   int userId;
//   String title;
//   bool isCheck;
//
//   CheckBoxListTileModel({required this.userId, required this.title,required this.isCheck});
//
//   static List<CheckBoxListTileModel> getUsers() {
//     return <CheckBoxListTileModel>[
//       CheckBoxListTileModel(
//           userId: 1,
//           title: "Chin",
//           isCheck: true),
//       // CheckBoxListTileModel(
//       //     userId: 2,
//       //     title: "Eyes",
//       //     isCheck: false),
//       // CheckBoxListTileModel(
//       //     userId: 3,
//       //     title: "Neck",
//       //     isCheck: false),
//       // CheckBoxListTileModel(
//       //     userId: 4,
//       //     title: "Сheekbones",
//       //     isCheck: false),
//       // CheckBoxListTileModel(
//       //     userId: 5,
//       //     title: "Сheeks",
//       //     isCheck: false),
         // CheckBoxListTileModel(
//       //     userId: 6,
//       //     title: "Jaw line",
//       //     isCheck: false),
         // CheckBoxListTileModel(
//       //     userId: 7,
//       //     title: "Forehead",
//       //     isCheck: false),
//     ];
//   }
}