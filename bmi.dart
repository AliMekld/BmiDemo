import 'dart:math' as prefix0;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loginform/ui/LoginForm.dart';
import 'package:loginform/ui/massenger.dart';
import 'package:loginform/ui/users.dart';

class BMI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BMISTATE();
  }
}

class BMISTATE extends State {
  double weight = 60;
  double height = 120;
  bool isMAle = true;
  int age = 24;
  double result;
  String readingResult;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Color(0xFF00adb5),
          ),
        ),
        backgroundColor: Color(0xFF222831),
      ),
//---------end of appBar--------//
      body: new Column(
        children: <Widget>[
          //------------------first part male and famale ----------------------//
          Expanded(
              flex: 1,
              //male
              child: new Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              color: isMAle
                                  ? Color(0xFF00adb5)
                                  : Color(0xFF393e46),
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsetsDirectional.only(
                              start: 20, end: 10, top: 20, bottom: 20),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Image.asset(
                                      "images/male.png.png",
                                      height: 90.0,
                                      width: 90.0,
                                      color: Colors.white,
                                    ),
                                  )),
                              Expanded(
                                child: Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.9,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            isMAle = true;
                          });
                        },
                      )),

                  //famale
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                !isMAle ? Color(0xFF00adb5) : Color(0xFF393e46),
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsetsDirectional.only(
                            start: 10, end: 20, top: 20, bottom: 20),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Image.asset(
                                    "images/female.png",
                                    height: 90.0,
                                    width: 90.0,
                                    color: Colors.white,
                                  ),
                                )),
                            Expanded(
                              child: Text(
                                "Female",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.9,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isMAle = false;
                        });
                      },
                    ),
                  )
                ],
              )),
          //---------------------second part for height slider---------------------//
          Expanded(
              flex: 1,
              child: new Container(
                width: double.infinity,
                margin: EdgeInsetsDirectional.only(
                    start: 20, end: 20, top: 0, bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF393e46),
                  borderRadius: BorderRadius.circular(10),
                ),
                //--------------------------------//
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Color(0xFFeeeeee),
                        fontSize: 25.9,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "${height.round()}",
                          style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF00adb5),
                          ),
                        ),
                        Text(
                          "CM",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFeeeeee),
                          ),
                        )
                        //------slider------//
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                            print(value.round());
                          });
                        })
                  ],
                ),
              )),
          //-----------------------third part ,age and weight----------------------//
          Expanded(
              flex: 1,
              child: new Row(
                children: <Widget>[
                  //--WEIGHT--//
                  Expanded(
                      child: Container(
                    margin: EdgeInsetsDirectional.only(
                        start: 20, end: 10, top: 0, bottom: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFF393e46),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            color: Color(0xFFeeeeee),
                            fontSize: 20.9,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "${weight.round()}",
                              style: TextStyle(
                                color: Color(0xFF00adb5),
                                fontSize: 55,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text("KG",
                                style: TextStyle(
                                  color: Color(0xFFeeeeee),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: "weight-",

                              //// mini: true,
                              backgroundColor: Colors.red,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              heroTag: "weight+",
                              backgroundColor: Colors.green,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(Icons.add),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                  //--AGE--//
                  Expanded(
                      child: Container(
                    margin: EdgeInsetsDirectional.only(
                        start: 10, end: 20, top: 0, bottom: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFF393e46),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "AGE",
                          style: TextStyle(
                            color: Color(0xFFeeeeee),
                            fontSize: 20.9,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "$age",
                              style: TextStyle(
                                color: Color(0xFF00adb5),
                                fontSize: 55,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text("",
                                style: TextStyle(color: Colors.grey.shade100))
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: "age-+",
                              backgroundColor: Colors.red,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                                heroTag: "age+",
                                backgroundColor: Colors.green,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add))
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                      ],
                    ),
                  )),
                ],
              )),

          //----------calculate button------------//
          Container(
            width: double.infinity,
            height: 60.0,
            child: MaterialButton(
              onPressed: () {
                result = weight / pow(height / 100, 2);
                if (result < 18.5) {
                  readingResult = "UnderWeight";
                } else if (result >= 18.5 && result < 24.9) {
                  readingResult = "NormalWeight";
                } else if (result >= 25 && result < 29.9) {
                  readingResult = "Pre-Obese";
                } else {
                  readingResult = "Obese";
                }

                print(result.toStringAsFixed(1));
                setState(() {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return BuildDialog(
                            context, result, age, readingResult, isMAle);
                      });
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return Massenger();
                  // }));
                });
              },
              child: new Text("CALCULATE"),
              textColor: Colors.white,
              color: Color(0xFF00adb5),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF393e46).withOpacity(0.333),
    );
  }

  // ignore: non_constant_identifier_names
  Widget BuildDialog(
      BuildContext context, double result, int age, String readingr, bool sex) {
    return new Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(blurRadius: 1, color: Colors.black12, spreadRadius: 1)
            ]),
        child: AlertDialog(
          backgroundColor: Color(0xFF393e46).withOpacity(0.7),
          title: const Text(
            'BMI RESULT',
            style: TextStyle(
              color: Color(0xFF00adb5),
            ),
          ),
          content: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.grey.shade100,
                height: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                sex ? "You Are Male" : "You Are Female",
                style: TextStyle(
                  color: Color(0xFF00adb5),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.9,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your BMI is ${result.roundToDouble()}",
                style: TextStyle(
                  color: Color(0xFF00adb5),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.9,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your AGE is $age years ",
                style: TextStyle(
                  color: Color(0xFF00adb5),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.9,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You Are ${readingr.toUpperCase()}",
                style: TextStyle(
                  color: Color(0xFF00adb5),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.9,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                color: Colors.grey.shade100,
                height: 2,
              ),
            ],
          ),
          actions: <Widget>[
            new RaisedButton(
              color: Color(0xFF00adb5),
              onPressed: () {
                Navigator.of(context).pop();
              },
              textColor: Colors.white,
              child: const Text('Close'),
            ),
          ],
        ));
  }
}
