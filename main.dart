import 'package:flutter/material.dart';
import 'package:loginform/ui/bmi.dart';
import 'package:loginform/ui/users.dart';

//import 'package:loginform/ui/LoginForm.dart';
import './ui/massenger.dart';
import './ui/users.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new BMI(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
