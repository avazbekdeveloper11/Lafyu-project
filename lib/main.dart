import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _route = RouteGenerator();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHop',
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _route.generateRoute,
    );
  }
}
