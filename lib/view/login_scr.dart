import 'package:flutter/material.dart';
import 'package:mvvm/utils/utils.dart';

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
                Utils.toastMessage("message");
              },
              child: const Text("Route Home")
          )
        ],
      ),
    );
  }
}
