import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
TextEditingController pname= TextEditingController();
TextEditingController pmobno=TextEditingController();
TextEditingController pmailid=TextEditingController();
TextEditingController psym=TextEditingController();
TextEditingController pdoc=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Covid App"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(

                  decoration: InputDecoration(
                      labelText: "Patient name",
                      prefixIcon: Icon(Icons.accessibility),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      hintText: ("Patient Name")),

                ),
                SizedBox(height: 20,),
                TextField(

                  decoration: InputDecoration(
                    labelText: "mob no",
                    prefixIcon: Icon(Icons.account_balance_wallet),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: ("Mobile No"),

                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "email id",
                      prefixIcon: Icon(Icons.ice_skating),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      hintText: ("Email Id")),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "doctor",
                      prefixIcon: Icon(Icons.accessibility_outlined),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      hintText: ("Consultant doctor")),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "symptoms",
                      prefixIcon: Icon(Icons.abc_sharp),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      hintText: ("Symptoms")),
                ),
                SizedBox(height: 20,),
                SizedBox(height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    onPressed: (){
                      print("submitted");

                    },child: Text("Submit",
                      style: TextStyle(color: Colors.white,fontSize: 20)

                  ),),

                ),



              ],
            ),
          ),
        )
      ),
    );
  }
}
