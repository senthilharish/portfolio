import 'package:flutter/material.dart';
class About_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text("ABOUT ME", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)),
        SizedBox(height: 50),
        Text(
          '🌐 Web App Development Enthusiast',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'I am passionate about developing responsive, user-friendly web applications, constantly enhancing my skills to build high-quality and intuitive experiences for users. I actively explore new technologies to improve the functionality and design of web apps.',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 20),
        Text(
          '🔍 Problem Solver',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'I enjoy tackling complex challenges in web development, optimizing performance, and ensuring seamless user interactions across different devices and platforms.',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 20),
        Text(
          '🚀 Career Aspirations',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'I am eager to apply my web app development skills in a professional setting and am actively seeking internships to gain hands-on experience. My goal is to contribute to innovative web projects and work with a team that is dedicated to pushing the boundaries of web development.',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
