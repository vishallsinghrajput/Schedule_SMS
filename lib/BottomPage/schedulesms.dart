import 'package:flutter/material.dart';

class ScheduleSMSPage extends StatefulWidget {
  const ScheduleSMSPage({Key? key}) : super(key: key);

  @override
  State<ScheduleSMSPage> createState() => _ScheduleSMSPageState();
}

class _ScheduleSMSPageState extends State<ScheduleSMSPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("schedule sms"),
      ),
    );
  }
}
