import 'package:flutter/material.dart';
import 'package:flutter_clean_price_tracker/src/config/routes/route_generator.dart';
import 'package:flutter_clean_price_tracker/src/config/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Price Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      initialRoute: Routes.splash,
    );
  }
}
