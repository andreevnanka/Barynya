import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:barinya/main.dart';
import 'package:barinya/pages/video/video-list.dart';
//import 'package:http/http.dart' as http;

class Program1Exercise1 extends StatefulWidget {
  const Program1Exercise1({Key? key}) : super(key: key);

  @override
  _Program1Exercise1State createState() => _Program1Exercise1State();
}

class _Program1Exercise1State extends State<Program1Exercise1> with SingleTickerProviderStateMixin {
  List<Video> listModel = [];
  var loading = false;
  // //late Future<Video> futureVideo;
  //
  // Future<Null> getData() async{
  //   setState(() {
  //     loading = true;
  //   });
  //
  //   final responseData = await http.get(Uri.parse('http://barynya.cherrydev.tech/api/exercise_set'));
  //   if(responseData.statusCode == 200){
  //     final data = jsonDecode(responseData.body);
  //     print(data);
  //     setState(() {
  //        //for(Map i in data){
  //        // listModel.add(Video.fromJson(i));
  //       //}
  //       loading = false;
  //     });
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: SafeArea(
          child: Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 327,
                      child: Text(
                        '1 exercise out of 12',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 12.0)),
                    Container(
                      width: 327,
                      child: Text(
                        'Head massage lifting',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 482.0)
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
                            Navigator.pushNamed(context, '/exercise1-video');
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
              ),
            ],
          )
      ),
    );
  }
}
                      // SizedBox(
                      //   child: loading ? Center (child: CircularProgressIndicator()) : ListView.builder(
                      //       itemCount: listModel.length,
                      //       itemBuilder: (context, i){
                      //         final nDataList = listModel[i];
                      //         return Card(
                      //           child: Column (

//                                     children: [
//                                       Container(
//                                         width: 327,
//                                         child: Text(
//                                           'uu',
//                                           //'${nDataList.id} exercise out of ${listModel.length}',
//                                           textAlign: TextAlign.start,
//                                           style: TextStyle(
//                                               color: Colors.deepOrange,
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w700
//                                           ),
//                                         ),
//                                       ),
//                                       Padding(padding: EdgeInsets.only(bottom: 12.0)),
//                                       Container(
//                                         width: 327,
//                                         child: Text(
//                                           'yy',
//                                           //'nDataList.name',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 36,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ),
//                                       Padding(
//                                           padding: EdgeInsets.only(bottom: 482.0)
//                                       ),
//                                       Container(
//                                         width: 327,
//                                         height: 62,
//                                         decoration: BoxDecoration(
//                                           color: Colors.deepOrange,
//                                           borderRadius: BorderRadius.circular(16.0),
//                                         ),
//                                         child: TextButton(
//                                             onPressed: () {
//                                               Navigator.pushNamed(context, '/exercise1-video');
//                                             },
//                                             child: Text(
//                                               'Next',
//                                               style: TextStyle(
//                                                 fontSize: 14.0,
//                                                 color: Colors.white,
//                                                 fontWeight: FontWeight.w600,
//                                                 backgroundColor: Colors.deepOrange,
//                                               ),
//                                             )
//                                         ),
//                                       ),
//                                     ])
//                               );
//                             }),
//                       ),
//                       Padding(
//                           padding: EdgeInsets.only(bottom: 482.0)
//                       ),
//                       Container(
//                         width: 327,
//                         height: 62,
//                         decoration: BoxDecoration(
//                           color: Colors.deepOrange,
//                           borderRadius: BorderRadius.circular(16.0),
//                         ),
//                         child: TextButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, '/exercise1-video');
//                             },
//                             child: Text(
//                               'Next',
//                               style: TextStyle(
//                                 fontSize: 14.0,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w600,
//                                 backgroundColor: Colors.deepOrange,
//                               ),
//                             )
//                         ),
//                       ),
//                     ] ),
//               ),
//             ]),
//       )
//     );
//   }
// }