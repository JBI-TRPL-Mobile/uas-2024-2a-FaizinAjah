import 'package:flutter/material.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/home_screen.dart';
import 'screens/messages_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wireframe Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignInScreen(),
        '/sign-up': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/messages': (context) => MessagesScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
