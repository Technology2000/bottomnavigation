import 'package:bottomnavigation/jobs.dart';
import 'package:bottomnavigation/jobsapplied.dart';
import 'package:bottomnavigation/profile.dart';
import 'package:flutter/material.dart';
import 'bottombar.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:bottombar(),
      // routes: <String,WidgetBuilder>{
      //   '\jobs':(BuildContext context)=>jobs(),
      //   '\jobsapplied':(BuildContext context)=>jobsapplied(),
      //   '\profile':(BuildContext context)=>profile(),
      // },
    );
  }
}

