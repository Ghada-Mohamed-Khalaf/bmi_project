import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
    double resulte=0;
    int age=0;
    bool isFemale=true;
    double height=0;
    double weight=0;
    String prefectWeight="";
    NextPage({
      required this.age,
      required this.isFemale,
      required this.resulte,
      required this.height,
      required this.weight,
      required this.prefectWeight,


});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "BMI Result",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender:$isFemale",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,color: Colors.white,
              ),
            ),
            Text(
              "Age:$age",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,color: Colors.white,
              ),
            ),
            Text(
              "height:$height",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,color: Colors.white,
              ),
            ),
            Text(
              "Weight:$weight",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,color: Colors.white,
              ),
            ),
            Text(
              "Result BMI:$resulte",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,color: Colors.white,
              ),
            ),
            Text(
              "Perfect Weight:$prefectWeight",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
