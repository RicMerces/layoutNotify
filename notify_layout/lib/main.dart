import 'package:flutter/material.dart';
import 'package:notify_layout/app/screens/app_initial/loading_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    ),
  );
}
