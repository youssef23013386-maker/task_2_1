import 'package:flutter/material.dart';
import 'package:task_2_1/doctor_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Profile',
      home: const DoctorProfileScreen(),
    );
  }
}
