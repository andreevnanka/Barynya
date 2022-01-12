import 'package:flutter/material.dart';
import 'package:barinya/pages/home.dart';
import 'package:barinya/pages/registration/registration_mail.dart';
import 'package:barinya/pages/registration/registration_name.dart';
import 'package:barinya/pages/registration/registration_gender.dart';
import 'package:barinya/pages/registration/registration_problem_zone.dart';
import 'package:barinya/pages/registration/registration_age.dart';
import 'package:barinya/pages/registration/registration_goals.dart';
import 'package:barinya/pages/loading.dart';
import 'package:barinya/pages/individual_programm.dart';
import 'package:barinya/pages/programs/program1-day1.dart';
import 'package:barinya/pages/exercises/exercise1opening.dart';
import 'package:barinya/pages/video/exercise1video.dart';
import 'package:barinya/pages/settings.dart';


// void main() => runApp(MyApp()
//         initialRoute: '/',
//         routes: {
//             '/': (BuildContext context) => BarynyaHome(),
//             '/mail': (BuildContext context) => RegistrationMail(),
//             '/name': (BuildContext context)=> RegistrationName(),
//             '/gender': (BuildContext context)=> RegistrationGender(),
//             '/problem-zone': (BuildContext context)=> ProblemZone(),
//             '/age': (BuildContext context)=> RegistrationAge(),
//             '/goals': (BuildContext context)=> RegistrationGoals(),
//             '/loading': (BuildContext context)=> LoadingPage(),
//             '/your-program': (BuildContext context)=> IndividualProgramm(),
//             '/programm-first-screen': (BuildContext context)=> Day1Program1(),
//             '/exercise1': (BuildContext context)=> Program1Exercise1(),
//             '/exercise1-video': (BuildContext context)=> VideoPlayerScreen(),
//     }
//     ),
//  );
//
// class RoutesList {
//
// }
// class MyApp extends StatefulWidget {
//     MyApp() {
//         final router = new Router();
//         Routes.configureRoutes(router);
//         Application.router = router;
//     }

void main() => runApp(
  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => BarynyaHome(),
        '/mail': (BuildContext context) => RegistrationMail(),
        '/name': (BuildContext context)=> RegistrationName(),
        '/gender': (BuildContext context)=> RegistrationGender(),
        '/problem-zone': (BuildContext context)=> ProblemZone(),
        '/age': (BuildContext context)=> RegistrationAge(),
        '/goals': (BuildContext context)=> RegistrationGoals(),
        '/loading': (BuildContext context)=> LoadingPage(),
        '/your-program': (BuildContext context)=> IndividualProgramm(),
        '/programm-first-screen': (BuildContext context)=> Day1Program1(),
        '/exercise1': (BuildContext context)=> Program1Exercise1(),
        '/exercise1-video': (BuildContext context)=> VideoPlayerScreen(),
        '/settings.dart': (BuildContext context)=> SettingsPage(),
      }),
);