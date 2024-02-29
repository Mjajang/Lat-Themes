import 'package:flutter/material.dart';
import 'package:lat_theme/src/screens/auth/login_screen.dart';
import 'package:lat_theme/src/screens/auth/splash_screen.dart';
import 'package:lat_theme/src/values/components/components.dart';
import 'package:lat_theme/src/values/constants/constants.dart';

import 'menu/setting_app_screen.dart';

class HelloWorldScreen extends StatefulWidget {
  const HelloWorldScreen({super.key});

  @override
  State<HelloWorldScreen> createState() => _HelloWorldScreenState();
}

class _HelloWorldScreenState extends State<HelloWorldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Theme"),
        actions: [
          IconButton(
            tooltip: 'About app',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SettingAppScreen(),
                ),
              );
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          CustomButton.filled(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SplashScreen(),
                ),
              );
            },
            label: 'Splash Screen',
          ),
          const SpaceHeight(8),
          CustomButton.outlined(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const LoginScreen(),
                ),
              );
            },
            label: 'Login Screen',
          ),
        ],
      ),
    );
  }
}
