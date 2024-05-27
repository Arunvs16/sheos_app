import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shoes_app/model/cart.dart';
import 'package:shoes_app/pages/intro_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Cart(),
    builder: (context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ),);
  }
}