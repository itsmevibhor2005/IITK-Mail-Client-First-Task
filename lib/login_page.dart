import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget{
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IITK Mail Input',
      
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 1, 52),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center column vertically
              children: [
                // Centered title and logo row
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center elements horizontally
                  children: [
                    ClipOval(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOCoSwMklS9AM4Nwh-m9E_Kh9SU07Z52iziw&usqp=CAU', // Assuming logo is in assets folder
                            width: 55,
                            height: 55,
                            
                          ),
                      ),
                    ),
                    
                    const SizedBox(width: 10),
                    Text(
                      'IITK Mail',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // White text for dark theme
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Spacing between title and form
                // Username field with leading icon
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey), // Grey border
                    ),
                    labelText: 'Username',
                    
                    prefixIcon: const Icon(Icons.account_circle), // Username icon
                  ),
                ),
                const SizedBox(height: 10),
                // Password field with leading icon and trailing visibility toggle
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey), // Grey border
                    ),
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock), // Password icon
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility_off), // Visibility toggle
                      onPressed: () {
                        // Handle password visibility toggle
                      },
                    ),
                  ),
                  obscureText: true, // Hide password text
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align elements
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle forgot username/password
                      },
                      child: const Text('Forgot Username/Password?'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white, // White text for dark theme
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle submit button press
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}