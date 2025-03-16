import 'package:flutter/material.dart';
import 'package:fruit_market/features/splash/presentation/splash_view.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
