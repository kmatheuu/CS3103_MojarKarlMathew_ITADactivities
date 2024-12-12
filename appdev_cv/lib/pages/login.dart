import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameText = TextEditingController();
  final TextEditingController passwordText = TextEditingController();

  LoginPage({super.key});

  void loginButton(BuildContext context) {
    String username = usernameText.text;
    String password = passwordText.text;

    // Check if username and password are correct
    if (username == 'kmathe' && password == 'zxczxc') {
      // login is successful, go to main.dart MyCVPage
      Navigator.pushReplacementNamed(context, '/home');
    } else if (username == '' || password == '') {
      // if the username and/or password is empty go here
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Credentials Invalid!"),
            content: const Text('Username or Password is empty'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // close the dialog
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      // if wrong password or username, show an error dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Credentials Invalid!"),
            content: const Text('Invalid username or password entered.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C2F33), // Dark Discord background
      appBar: AppBar(
        title: const Text("My CV - Login"),
        centerTitle: true,
        backgroundColor: const Color(0xFF2C2F33), // Dark app bar color
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          color: Colors.white, // White text for the title
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          // Center the input fields and button
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // username textfield with constrained width
              Container(
                width: 300, // Set a fixed width
                child: TextField(
                  controller: usernameText,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: const TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: const Color(0xFF40444B), // Dark input field
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  style: const TextStyle(
                      color: Colors.white), // White text inside the field
                ),
              ),
              const SizedBox(height: 10), // Reduced space between fields

              // password textfield with constrained width
              Container(
                width: 300, // Set a fixed width
                child: TextField(
                  controller: passwordText,
                  obscureText: true, // mask the password
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: const Color(0xFF40444B), // Dark input field
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  style: const TextStyle(
                      color: Colors.white), // White text inside the field
                ),
              ),
              const SizedBox(height: 20), // Adjusted space before button

              // login button
              ElevatedButton(
                onPressed: () => loginButton(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7289DA), // Discord's blue
                  foregroundColor: Colors.white, // White text color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80, vertical: 12), // Reduced padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
