import 'dart:io';
import 'dart:ui' as ui show Canvas, Paint, Path;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shidule_sms/second.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  void redirectToSecondPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Second()));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text(" "),
          ),
          body: SingleChildScrollView(
              padding: const EdgeInsets.all(22),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Flexible(
                          fit: FlexFit.loose, child: Icon(Icons.arrow_back_ios)),
                      SizedBox(
                        width: 70,
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Text(
                          "Schedule SMS",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Selected Contact',
                          hoverColor: Colors.black,
                          prefixIcon: const Icon(
                            Icons.perm_contact_calendar,
                            color: Colors.black87,
                          ),
                          suffixIcon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black87,
                          )),
                      onTap: redirectToSecondPage),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: const [
                      Text(
                        "0 selected",
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Type your massage here',
                        hoverColor: Colors.white10),
                    onTap: () {
                      if (kDebugMode) {
                        print("tap on massage box");
                      }
                    },
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          "Max 500 words",
                          style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                        ),
                      ),
                      // SizedBox(width: 150,),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Text(
                          'Upload Files',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          //Date box start
                          child: Container(
                            alignment: Alignment.center,
                            height: 55,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black38),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.calendar_today_rounded,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("28 Mar 2023"),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          //time box start
                          fit: FlexFit.loose,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 55,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.access_time_rounded,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("12 AM"),
                              ],
                            ),
                          ),
                        )
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    //title box start
                    children: const [
                      Text(
                        "Choose the method of Sending Message",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      children: [
                        Column(
                          //SMS box start
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 120,
                              height: 75,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  border: Border.all(color: Colors.white12),
                                  color: Colors.red.shade50),
                              child: const Icon(
                                Icons.chat,
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                color: Colors.pink.shade50,
                              ),
                              height: 25,
                              width: 120,
                              child: const Text("SMS",
                                  style: TextStyle(fontWeight: FontWeight.w500)),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ), //SMS box end

                        Column(
                          //whatsapp box
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 75,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      topLeft: Radius.circular(12)),
                                  color: Colors.red.shade50),
                              child: const Icon(
                                Icons.phone_in_talk,
                                color: Colors.green,
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12)),
                                  color: Colors.pink.shade50),
                              child: const Center(
                                  child: Text(
                                "Whatsapp",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )),
                            )
                            //whatsapp box end
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 48,
                    width: 450,
                    child: ElevatedButton(
                      onPressed: redirectToSecondPage,
                      child: const Text(
                        "Schedule SMS",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ],
              )
          )
        ),
      );
    }
 }
