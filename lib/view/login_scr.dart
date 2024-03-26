import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, RoutesName.home);
              },
              child: const Text("Route Home")
          )
        ],
      ),
    );
  }
}
