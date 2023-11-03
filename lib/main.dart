import 'package:flutter/material.dart';
import 'package:laboratorio3_app/widgets/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  const MaterialApp(
      title: 'ListView',
      debugShowCheckedModeBanner: false,
      home: StackHome(),
    );
  }
}
