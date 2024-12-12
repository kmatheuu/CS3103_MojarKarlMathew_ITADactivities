import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor:
            const Color(0xFF2F3136), // Discord Dark Color for the AppBar
        iconTheme: const IconThemeData(
          color: Colors.white, // Icon color
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, // Title color
          fontSize: 20,
        ),
      ),
      backgroundColor:
          const Color(0xFF2F3136), // Dark background color for the page
      body: const Center(
        child: Text(
          'No projects.',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white, // White text for dark mode
          ),
        ),
      ),
    );
  }
}
