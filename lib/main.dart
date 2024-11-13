import 'package:flutter/material.dart';
import 'package:portfolio/About_page.dart';
import 'package:portfolio/home_page.dart';  
import 'package:portfolio/contact_page.dart';
import 'package:portfolio/skills_page.dart';
import 'package:portfolio/project_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

enum SelectedPage { home, about, skills, project, contact }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> imagePaths = [
    "assets/images/portfolio.png",
    "assets/images/portfolio.png",
    "assets/images/portfolio.png",
    "assets/images/portfolio.png",
  ];

  SelectedPage? selectedPage;  

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
                      setState(() {
                        selectedPage = SelectedPage.home;
                      });
                    },
                    child: const Text("Home"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedPage = SelectedPage.about;
                      });
                    },
                    child: const Text("About"),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedPage = SelectedPage.skills;
                      });
                    },
                    child: const Text("Skills"),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedPage = SelectedPage.project;
                      });
                    },
                    child: const Text("Project"),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedPage = SelectedPage.contact;
                      });
                    },
                    child: const Text("Contact"),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hi, my name is Harish S \n       I am a Developer",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 350,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                      ),
                      items: imagePaths.map((path) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            path,
                            fit: BoxFit.fill,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Container(
                height: 1000,
                width: 1400,
                child: selectedPage != null
                    ? _getSelectedPageContent(selectedPage!)
                    : Container(), // Empty container if no page selected
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to return the widget based on selected page
  Widget _getSelectedPageContent(SelectedPage selectedPage) {
    switch (selectedPage) {
      case SelectedPage.home:
        return  Home_Page();
      case SelectedPage.about:
        return About_page();
      case SelectedPage.skills:
        return const skills_page();
      case SelectedPage.project:
        return const project_page();
      case SelectedPage.contact:
        return const contact_page();
      default:
        return Container();
    }
  }
}
