import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_app/pages/loginSignUp/auth.dart';
import 'package:healthcare_app/pages/loginSignUp/profileSetup.dart';
import 'package:healthcare_app/pages/tabs.dart';

void main() {

  // final Color primary = HexColor("#171433");
  // final Color secondary1 = HexColor("#7168d3"); //purple
  // final Color secondary2 = HexColor("#7fe4fO"); //blue
  // final Color neutral = HexColor("#f2f1f9");

  runApp(
    const MaterialApp(
      home: Tabs(),
    ),
  );
}
