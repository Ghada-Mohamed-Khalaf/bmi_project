import 'dart:math';

import 'package:flutter/material.dart';

import 'nextPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
bool isMale=false;
var val=60.0;
int weight=70;
int age=20;
double height=150;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("BMICalculator"),
      ),
      body: Column(
          children: [
      Expanded(
      child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  isMale=true;

                });
              },
              child: Container(


                child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male,
                        size: 50,color: Colors.white,),
                      SizedBox(
                        height: 10,
                      ),
                      Text("MALE", style: TextStyle(
                          fontSize: 30, color: Colors.white,),),

                    ]

                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isMale ?Colors.red:Colors.grey,

                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  isMale=false;
                });
              },
              child: Container(


                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female,
                        size: 50,color: Colors.white,),
                      SizedBox(
                        height: 10,
                      ),
                      Text("FEMALE", style: TextStyle(
                          fontSize: 30, color: Colors.white),),

                    ]

                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isMale ?Colors.grey:Colors.red,

                ),
              ),
            ),
          ),

        ],
      ),
    ),
    ),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("HEIGHT", style: TextStyle(fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white),),
    Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("173",
    style: TextStyle(fontSize: 30, fontWeight: FontWeight
        .bold, color: Colors.white,),),

    Text("cm",style: TextStyle(color: Colors.white),),
    ],

    ),
    Slider(
    activeColor: Colors.red,

    max: 250,
    min: 50,
    value: val,
    onChanged: (value) {
      setState(() {
        val=value;
      });

    }),

    ],

    ),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.grey
    ),
    ),
    ),
    ),


    Expanded(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Expanded(

        child: Container(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Text("WEIGHT", style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.white),
        ),
        Text("$weight", style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
        FloatingActionButton(
        onPressed: () {
          setState(() {
            weight--;

          });
        }, child: Icon(Icons.remove),),
        SizedBox(width:5),
        FloatingActionButton(
        onPressed: () {
          setState(() {
            weight++;
          });
        }, child: Icon(Icons.add),),
        ],
        ),

        ],

        ),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey
        ),
        ),
      ),
        SizedBox(width: 20,),
        Expanded(

          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("AGE", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
                ),
                Text("$age", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(()
                        {
                          age--;
                        });
                      }, child: Icon(Icons.remove),),
                    SizedBox(width:5),

                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          age++;

                        });
                      }, child: Icon(Icons.add),),
                  ],
                ),

              ],

            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey
            ),
          ),
        ),
      ],

      ),
    ),
    ),
    Container(
    width: double.infinity,
    color: Colors.red,
    height: 50,
    child: MaterialButton(

    onPressed: () {
     double result=weight / pow(height/100,2);
      print(result.round());
      Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage(
        age: 22,
        isFemale: true,
        height: 114,
        weight: 59,
        resulte: 46,
        prefectWeight: "fit",
      ),

      ),
      );
    },
    child:
    Text("CALCULATE",
    style: TextStyle(color: Colors.white),),
    ),
    ),
    ],
    ),

    );
  }
}
