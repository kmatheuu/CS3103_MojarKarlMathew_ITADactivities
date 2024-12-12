import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
        backgroundColor: Color(0xFF2C2F33), // Discord dark AppBar color
        iconTheme: const IconThemeData(
          color: Colors.white, // Icon color in the AppBar
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, // Title color
          fontSize: 20,
        ),
      ),
      backgroundColor:
          Color(0xFF2C2F33), // Dark background color for the whole page
      body: SingleChildScrollView(
        // Allows scrolling in case content overflows
        padding: const EdgeInsets.all(16.0),
        child: Center(
          // Centering the content
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center the text horizontally
            children: [
              // Elementary Section
              Text(
                'Elementary',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:
                      Color(0xFF7289DA), // Discord's purple accent for headers
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'School: Holy Trinity ',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Year Graduated: 2015',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              const SizedBox(height: 20),

              // Secondary Section
              Text(
                'Junior Highschool',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:
                      Color(0xFF7289DA), // Discord's purple accent for headers
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'School: APEC SCHOOLS',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Year Graduated: 2019',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Senior Highschool',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:
                      Color(0xFF7289DA), // Discord's purple accent for headers
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'School: STI Colleges',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light gray text color
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Year Graduated: 2021',
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
