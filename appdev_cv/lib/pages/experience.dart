import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
        backgroundColor:
            const Color(0xFF2C2F33), // Dark Discord background color
        iconTheme: const IconThemeData(
          color: Colors.white, // White icon color for dark mode
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, // White title text
          fontSize: 20,
        ),
      ),
      backgroundColor: const Color(0xFF2C2F33), // Discord dark background color
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center text horizontally
            children: [
              // Experience Section Title
              Text(
                'Experience',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7289DA), // Discord's purple accent
                ),
              ),
              const SizedBox(height: 10),
              // Example Experience Item
              Text(
                '- No experience',
                style: const TextStyle(
                  fontSize: 18,
                  color:
                      Colors.white70, // Light gray text color for readability
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
