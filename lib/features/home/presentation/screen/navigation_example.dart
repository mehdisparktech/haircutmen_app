import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haircutmen_app/config/route/app_routes.dart';

class NavigationExample extends StatelessWidget {
  const NavigationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the curved navigation screen
            Get.toNamed(AppRoutes.homeNav);
          },
          child: const Text('Go to Home Navigation'),
        ),
      ),
    );
  }
}
