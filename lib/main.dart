import 'package:flutter/material.dart';

void main() {
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GreetingHomePage(),
    );
  }
}

class GreetingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red, // Change text color to red
                fontWeight: FontWeight.bold, // Make text bold
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 10), // Add space between text widgets
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20), // Add space between text and image
            Image.asset("assets/flutter.png",
              fit: BoxFit.fill,
            ),

            SizedBox(height: 20), // Add space between image and button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Change button color to green
              ),
              onPressed: () {
                // Show Snackbar on button press
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}