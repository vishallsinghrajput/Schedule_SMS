import 'package:flutter/material.dart';
import 'package:shidule_sms/schedule_page.dart';
import 'package:shidule_sms/third.dart';
import 'list_title.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  void redirectToSchedulePage(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>SchedulePage(),));
  }
  
  void redirectToThirdPage(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Third(),));
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
  appBar:AppBar(
      title: const Text("FLUTTER")
  ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(22),
          child:Column(
            children:[
              Row(
                children: [
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: redirctToSchedule,
                    child: const Icon(Icons.arrow_back_ios,color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 50,),
                  const Text("Schedule SMS",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                   const SizedBox(width: 40,),
                  GestureDetector(
                    onTap: redirectToThirdPage ,
                    child: const Text("Upload Files",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 16
                    ),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Search your contact here",
                    prefixIcon: const Icon(Icons.search,color: Colors.black,),
                    hoverColor:Colors.yellow
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
             const SizedBox(height: 30,),
               const ListTile(
                title: Text("Vishal",style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.circle_outlined),
              ),
              const SizedBox(height: 30,),
              const ListTile(
                title: Text("Rahul",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.circle_outlined),
              ),
              const SizedBox(height: 30,),
              const ListTile(
                title: Text("Vishwas",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.circle_outlined),
              ),
              const SizedBox(height: 30,),
              const ListTile(
                title: Text("Sonal",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.circle_outlined),
              ),
              const SizedBox(height: 30,),
              const ListTile(
                title: Text("Vikash",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.circle_outlined),
              ),
              const SizedBox(height: 30,),
              const ListTile(
                title: Text("Driver",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.circle_outlined),
              ),
              const SizedBox(height: 30,),
              const ListTile(
                title: Text("Kundan",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.circle_outlined),
              ),
              const SizedBox(height: 30,),
              const ListTile(
                title: Text("Sweta",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.circle_outlined),
              )
             ]
          )
        ),
      ),
    );
  }

  void redirctToSchedule() {
  }
}
