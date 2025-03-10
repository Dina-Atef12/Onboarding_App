import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences
import 'package:on_boarding_screen/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance(); // Get the SharedPreferences instance
            await prefs.setBool("onboarding", false); // Set the onboarding flag to false
            // Optionally, you can navigate back to the onboarding screen after resetting:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyApp(onboarding: false)),
            );
          },
          child: const Text("Enable onboarding"),
        ),
      ),
    );
  }
}
