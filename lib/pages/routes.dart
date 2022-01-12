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

class Routes {
  static String root = "/";
  static String mail = '/mail';
  static String name = '/name';
  static String gender = '/code-view';
  static String problemZone = '/github-code-view';
  static String age = '/web-view-page';
  static String goals = '/loginpage';
  static String loading = '/issuesMessage';
  static String program = '/collection-page';
  static String collectionFullPage = '/collection-full-page';
  static String collectionFullPage = '/collection-full-page';
  static String collectionFullPage = '/collection-full-page';
  static String standardPage = '/standard-page/:id';

  static void configureRoutes(Router router) {
    List widgetDemosList = new WidgetDemoList().getDemos();
   router.notFoundHandler = new Handler(
     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
     }
   );
    router.define('/', handler: BarynyaHome);
    router.define('/mail', handler: RegistrationMail);
    router.define('/name', handler: RegistrationName);
    router.define('/gender', handler: RegistrationGender);
    router.define('/problem-zone', handler: ProblemZone);
    router.define('/age', handler: RegistrationAge);
    router.define('/goals', handler: RegistrationGoals);
    router.define('/loading', handler: LoadingPage);
    router.define('/your-program', handler: IndividualProgramm);
    router.define('/programm-first-screen', handler: Day1Program1);
    router.define('/exercise1', handler: Program1Exercise1);
    router.define('/exercise1-video', handler: VideoPlayerScreen);
    widgetDemosList.forEach((demo) {
      Handler handler = new Handler(handlerFunc:
          (BuildContext context, Map<String, List<String>> params) {
        print('组件路由params=$params widgetsItem=${demo.routerName}');
        analytics
            .logEvent(name: 'component', parameters: {'name': demo.routerName});
        return demo.buildRouter(context);
      });
      String path = demo.routerName;
      router.define('${path.toLowerCase()}', handler: handler);
    });
//    router.define(webViewPage,handler:webViewPageHand);
//    standardPages.forEach((String id, String md) => {
//
//    });
  }
}