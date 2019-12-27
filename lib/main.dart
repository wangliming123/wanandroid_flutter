import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/common.dart';
import 'package:wanandroid_flutter/res/colors.dart';
import 'package:wanandroid_flutter/ui/main_route.dart';
import 'package:wanandroid_flutter/ui/splash_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

  @override
  Widget build(BuildContext context) => MyApp();
}

class MyAppState extends State<MyApp> {
  Color _themeColor = AppColors.app_main;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Constant.mainRoute: (context)=> MainRoute(),
      },
      theme: ThemeData.light().copyWith(
        primaryColor: _themeColor,
        accentColor: _themeColor,
        indicatorColor: Colors.white,
      ),
      home: SplashRoute(),
    );
  }

}
