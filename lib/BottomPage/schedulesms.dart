
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
        centerTitle: true,
      ),
       body: Padding(
   padding: EdgeInsets.all(12.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Row(
               children: const [
                 Icon(Icons.check_circle_sharp),
                 SizedBox(width: 10,),
                 Center(
                   child: Text("Contact list Name",
                     style: TextStyle(
                     fontSize: 29,
                     fontWeight: FontWeight.bold,
                   ),),

                 ),
               ],
             )
           ],
         ),
       ),
    );
  }
}
