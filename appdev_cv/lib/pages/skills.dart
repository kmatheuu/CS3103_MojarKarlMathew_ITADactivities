import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        backgroundColor: Color(0xFF2C2F33), // Dark Discord background color
        iconTheme: const IconThemeData(
          color: Colors.white, // White icon color
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, // White title text
          fontSize: 20,
        ),
      ),
      backgroundColor: Color(0xFF2C2F33), // Discord dark background color
      body: SingleChildScrollView(
        // Allow scrolling for content
        padding: const EdgeInsets.all(16.0),
        child: Center(
          // Center the content
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center the text horizontally
            children: [
              // Programming Languages Section
              Text(
                'Programming Languages',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7289DA), // Discord's purple accent
                ),
              ),
              Text(
                '- C#',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              Text(
                '- C++',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              Text(
                '- SQL',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              Text(
                '- Javascript',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              const SizedBox(height: 20),

              // Version Control Section
              Text(
                'Version Control',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7289DA), // Discord's purple accent
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '- Git/GitHub',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              const SizedBox(height: 20),

              // Mobile App Development Section
              Text(
                'Development',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7289DA), // Discord's purple accent
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '- Flutter/Dart',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '- ReactJS',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
