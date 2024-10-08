import 'package:flutter/material.dart';
import 'package:portfolio/home_page.dart';

void main() {
  home_page home = new home_page();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (Context) => home_page()));
                    },
                    child: Text("Home")),
                    TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (Context) => home_page()));
                    },
                    child: Text("About")),
                    TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (Context) => home_page()));
                    },
                    child: Text("Skills")),
                    TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (Context) => home_page()));
                    },
                    child: Text("Project")),
                    TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (Context) => home_page()));
                    },
                    child: Text("Contact"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hi, my name is Harish S \n I am a Developer",style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold),),
                Image(image:Image.file())
              ],
            )
          ],
        ),
      ),
    ));
  }
}
