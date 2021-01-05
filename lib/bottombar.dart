import 'package:bottomnavigation/jobs.dart';
import 'package:bottomnavigation/jobsapplied.dart';
import 'package:bottomnavigation/profile.dart';
import 'package:flutter/material.dart';
class bottombar extends StatefulWidget {
  @override
  _bottombarState createState() => _bottombarState();
}
class _bottombarState extends State<bottombar> {
  List<Widget> list=[
    jobs(),
    jobsapplied(),
    profile()
  ];
  int _currentIndex=0;
  void _onTap(index){
      setState(() {
        _currentIndex=index;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff3C704A),
        currentIndex: _currentIndex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.work),
            label:'Jobs',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),
          label:'AppliedJobs',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.perm_identity),
            label: 'Profile',
          )
        ],
    ),
      );
  }
}
