import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/AppProvider.dart';
import 'Providers/CategoryProvider.dart';
import 'Screens/Passionate.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AppProvider()),
    ChangeNotifierProvider(create: (_) => CategoryProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Be Unique',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HomePage2(),
      home: Passionate(),
      // home: Passion(title: 'PASSIONS'),
    );
  }
}
