import 'package:flutter/material.dart';
import 'package:barinya/main.dart';

class ProblemZone extends StatefulWidget {
  const ProblemZone({Key? key}) : super(key: key);

  @override
  _ProblemZoneState createState() => _ProblemZoneState();
}

class _ProblemZoneState extends State<ProblemZone> {
  bool chinIsChecked = false;
  bool eyesIsChecked = false;
  bool neckIsChecked = false;
  bool cheekbonesIsChecked = false;
  bool cheeksIsChecked = false;
  bool jawLineIsChecked = false;
  bool foreheadIsChecked = false;


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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              /* Хотелось бы вставить генератор карточек */
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: chinIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Chin",
                        style: TextStyle(
                          color: chinIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: chinIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          chinIsChecked = value!;});
                      }
                      ),
                  onTap: () {
                    setState(() {
                      chinIsChecked = chinIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: eyesIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Eyes",
                        style: TextStyle(
                          color: eyesIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: eyesIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          eyesIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      eyesIsChecked = eyesIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: neckIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Neck",
                        style: TextStyle(
                          color: neckIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: neckIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          neckIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      neckIsChecked = neckIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: cheekbonesIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Сheekbones",
                        style: TextStyle(
                          color: cheekbonesIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: cheekbonesIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          cheekbonesIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      cheekbonesIsChecked = cheekbonesIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: cheeksIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Cheeks",
                        style: TextStyle(
                          color: cheeksIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: cheeksIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          cheeksIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      cheeksIsChecked = cheeksIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: jawLineIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Jaw line",
                        style: TextStyle(
                          color: jawLineIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: jawLineIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          jawLineIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      jawLineIsChecked = jawLineIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: foreheadIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Forehead",
                        style: TextStyle(
                          color: foreheadIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: foreheadIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          foreheadIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      foreheadIsChecked = foreheadIsChecked;
                    });},
                ),
              ),
              Padding(padding: MediaQuery.of(context).size.height <= 667 ? EdgeInsets.only(bottom: 91.0) : EdgeInsets.only(bottom: 170.0)),
              Container(
                width: 327,
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/age');
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
    );
  }
}