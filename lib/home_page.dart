import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w100),),),
        body:Column(
          children: [
            Text("hello harish"),
          ],
        ) ,
      );
  }
}