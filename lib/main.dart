import 'package:demo1/page/home_page.dart';
import 'package:demo1/page/login.dart';
import 'package:demo1/untils/myRoutes.dart';
import 'package:demo1/widget/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // bringVegetables(vietnam: true);
    int days =  30;
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // home: homePage(),
      initialRoute: routes.homeRoute,
      //  hoac initiaRoute : routes.loginRoute,
      routes: {
        "/":(context) =>login(),
        routes.homeRoute : (context) => homePage(),
        routes.loginRoute : (context) => login(),
      },
    );
  }
  // bringVegetables({@required bool vietnam=false, int vnd = 100}){
  //   //take cycle
  //
  //   //go to sec 16
  // }
}
