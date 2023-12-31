import 'package:flutter/material.dart';
import 'package:spotter/ui/pages/events_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 77, 77, 160)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Eventos de Spotter'),
    );
  }
}