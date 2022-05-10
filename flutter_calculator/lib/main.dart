import 'package:flutter/material.dart';
import 'view/home_screen.dart';
import 'package:flutter/services.dart';

void main() {
  // Add these 2 lines
  WidgetsFlutterBinding.ensureInitialized();
  
 SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    
 ));
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}
