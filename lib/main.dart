import 'package:day23hw/container_page.dart';
import 'package:day23hw/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SettingsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContainerPage(),
      ),
    );
  }
}
