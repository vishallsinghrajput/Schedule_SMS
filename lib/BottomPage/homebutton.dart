import 'package:flutter/material.dart';

class HomeButtonPage extends StatefulWidget {
  const HomeButtonPage({Key? key}) : super(key: key);

  @override
  State<HomeButtonPage> createState() => _HomeButtonPageState();
}

class _HomeButtonPageState extends State<HomeButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: const [
                SizedBox(height: 30,),
                Flexible(
                    child: Text("Welcome Vishal !",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19
                    ),)),
                 SizedBox(width: 100,),
                Text("Add new",style: TextStyle(
                  fontSize: 18,color: Colors.blue,
                  fontWeight: FontWeight.w600
                ),)
              ],
            ),
             const SizedBox(height: 20,),
            ClipRRect(
              borderRadius: BorderRadius.circular(17),
                child: Image.asset("assets/laptop.png")),
            const SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(height: 50,width: 106,
                  child: InkWell(highlightColor: Colors.blueGrey,
                    onTap: (){},borderRadius: BorderRadius.circular(9),
                    child: const Center(
                      child: Text("Upcoming",style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
                //const SizedBox(width: 40,),
                SizedBox(height: 50,width: 106,
                  child: InkWell(highlightColor: Colors.blueGrey,
                    onTap: (){},borderRadius: BorderRadius.circular(9),
                    child: const Center(
                      child: Text("Business",style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
                //const SizedBox(width: 40,),
                SizedBox(height: 50,width: 106,
                  child: InkWell(highlightColor: Colors.blueGrey,
                    onTap: (){},borderRadius: BorderRadius.circular(9),
                    child: const Center(
                      child: Text("General",style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Flexible(fit: FlexFit.loose,
              child:InkWell(borderRadius: BorderRadius.all(Radius.circular(30)
              ),
                radius: double.infinity,
                child: SizedBox(
                  height: 30,
                  child: Text("New Year"),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
