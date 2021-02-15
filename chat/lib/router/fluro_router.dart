// import 'package:fluro/fluro.dart';
// import 'package:flutter/material.dart';
// import 'main.dart';

// class FluroRouter {
//   static Router router = Router();

//   static Handler _homeHandler =
//       Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
//     return HomePage();
//   });

//   static Handler _chatHandler =
//       Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
//     return ChatPage();
//   });

//   static void setupRouter() {
//     router.define(HomePage.routeName, handler: _homeHandler);
//     router.define(
//       ChatPage.routeName, 
//       handler: _chatHandler,
//       transitionType: TransitionType.inFromTop,
//       );
//   }
// }
