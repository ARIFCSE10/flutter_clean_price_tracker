import 'package:flutter/material.dart';
import 'package:flutter_clean_price_tracker/src/config/routes/routes.dart';
import 'package:flutter_clean_price_tracker/src/core/const/app_const.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/presentation/pages/price_tracker_screen.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const PriceTrackerScreen(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(
            AppConst.routeError,
          ),
        ),
        body: const Center(
          child: Text(
            AppConst.routeError,
          ),
        ),
      ),
    );
  }
}
