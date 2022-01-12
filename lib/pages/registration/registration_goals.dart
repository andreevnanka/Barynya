import 'package:flutter/material.dart';
import 'package:barinya/main.dart';

class RegistrationGoals extends StatefulWidget {
  const RegistrationGoals({Key? key}) : super(key: key);

  @override
  _RegistrationGoalsState createState() => _RegistrationGoalsState();
}

class _RegistrationGoalsState extends State<RegistrationGoals> {
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
          'Your Goals',
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
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: liftingIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Lifting",
                        style: TextStyle(
                          color: liftingIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: liftingIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          liftingIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      liftingIsChecked = liftingIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: detoxIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Detox",
                        style: TextStyle(
                          color: detoxIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: detoxIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          detoxIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      detoxIsChecked = detoxIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: skinHydrationIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Skin hydration",
                        style: TextStyle(
                          color: skinHydrationIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: skinHydrationIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          skinHydrationIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      skinHydrationIsChecked = skinHydrationIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: sculptingIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Sculpting",
                        style: TextStyle(
                          color: sculptingIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: sculptingIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          sculptingIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      sculptingIsChecked = sculptingIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: removalOfEdemaIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Removal of edema",
                        style: TextStyle(
                          color: removalOfEdemaIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: removalOfEdemaIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          removalOfEdemaIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      removalOfEdemaIsChecked = removalOfEdemaIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: rejuvenationIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Rejuvenation",
                        style: TextStyle(
                          color: rejuvenationIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: rejuvenationIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          rejuvenationIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      rejuvenationIsChecked = rejuvenationIsChecked;
                    });},
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 6.0, bottom: 6.0)),
              Container(
                width: 327,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: volumeReductionIsChecked ? Colors.deepOrange : Colors.white,),
                ),
                child: InkWell(
                  child: CheckboxListTile(
                      title: Text(
                        "Volume reduction",
                        style: TextStyle(
                          color: volumeReductionIsChecked ? Colors.deepOrange : Colors.white,
                        ),
                      ),
                      activeColor: Colors.deepOrange,
                      selectedTileColor: Colors.deepOrange,
                      checkColor: Colors.black,
                      value: volumeReductionIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          volumeReductionIsChecked = value!;});
                      }
                  ),
                  onTap: () {
                    setState(() {
                      volumeReductionIsChecked = volumeReductionIsChecked;
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
                      // isButtonPressed == false ? _startTimer : null;
                      // },
                      Navigator.pushNamed(context, '/loading');
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

  // void _startTimer() {
  //   setState(() {
  //     isButtonPressed = true;
  //   });
  //
  //   Timer(
  //       Duration(seconds: 3),
  //           () {Navigator.pushNamed(context, eighthScreen);}
  //   );
  // }
}