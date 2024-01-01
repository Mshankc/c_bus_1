import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void handleLogin(BuildContext context, String username, String password) async {
  try {
    // Query Firestore for the provided username
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('username', isEqualTo: username)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      // User found in Firestore
      var userDoc = querySnapshot.docs.first;
      String storedPassword = userDoc['password'];
      String userRole = userDoc['role'];

      // Check if the provided password matches the stored password
      if (password == storedPassword) {
        // Passwords match, save user information to SharedPreferences
        saveUserDataToSharedPreferences(username, userRole);

        // Navigate based on user role
        if (userRole.toLowerCase() == 'parent') {
          Navigator.pushNamed(context, '/parenthomescreen');
        } else if (userRole.toLowerCase() == 'driver') {
          Navigator.pushNamed(context, '/driverhomescreen');
        } else {
          _showLoginFailedDialog(context);
        }
      } else {
        // Passwords do not match
        _showLoginFailedDialog(context);
      }
    } else {
      // User not found in Firestore
      _showLoginFailedDialog(context);
    }
  } catch (e) {
    // Handle errors
    print('Login failed: $e');
    _showLoginFailedDialog(context);
  }
}

void saveUserDataToSharedPreferences(String username, String userRole) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('isLoggedIn', true);
  prefs.setString('username', username);
  prefs.setString('userRole', userRole);
}

void _showLoginFailedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Login Failed'),
        content: const Text('Invalid username or password. Please try again.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}