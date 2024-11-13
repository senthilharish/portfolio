import 'package:flutter/material.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/contact_page.dart';
import 'package:portfolio/skills_page.dart';
import 'package:portfolio/project_page.dart';

void main() {
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
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const home_page()));
                    },
                    child: const Text("Home")),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>const skills_page()));
                    },
                    child: const Text("About")),
                 const  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const skills_page()));
                    },
                    child: const Text("Skills")),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const project_page()));
                    },
                    child: const Text("Project")),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const contact_page()));
                    },
                    child: const Text("Contact")),
                 const  SizedBox(width: 10),
                ],
              ),
             const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const  Text(
                    "Hi, my name is Harish S \n       I am a Developer",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                 const  SizedBox(width: 20),
                  Container(
                    height: 350,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.purpleAccent,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        "assets/images/portfolio.png",
                        fit: BoxFit.fill,
                      ),
                    )
                  )
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}