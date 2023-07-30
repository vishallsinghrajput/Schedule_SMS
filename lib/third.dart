import 'package:flutter/material.dart';

import 'BottomPage/homebutton.dart';
import 'BottomPage/managepage.dart';
import 'BottomPage/profilepage.dart';
import 'BottomPage/schedulesms.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  var listofPages=[
    HomeButtonPage(),
    ScheduleSMSPage(),
    ManagePage(),
    ProfilePage(),
  ];
  var index=0;
  void handleTabOnBottonSheet(int commingIndex)
  {
    setState(() {
      index = commingIndex;
    });
  }
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listofPages[index],
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon:Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.message),label: "Schedule SMS"),
          BottomNavigationBarItem(icon:Icon(Icons.manage_accounts),label: "Account"),
          //BottomNavigationBarItem(icon:Icon(Icons.account_circle_sharp),label: "Profile"),
        ],
        currentIndex: index,
       onTap: handleTabOnBottonSheet,
      ),
    );
  }
}


