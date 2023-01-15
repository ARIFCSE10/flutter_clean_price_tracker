import 'package:flutter/material.dart';
import 'package:flutter_clean_price_tracker/app.dart';
import 'package:flutter_clean_price_tracker/src/core/di/injector.dart';

void main() {
  initDependencies();
  runApp(const App());
}
