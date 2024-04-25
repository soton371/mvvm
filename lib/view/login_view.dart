import 'package:flutter/material.dart';
import 'package:mvvm/res/components/round_button.dart';
import 'package:mvvm/utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailCon = TextEditingController(),
      passwordCon = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  ValueNotifier<bool> obscurePassword = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: emailCon,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter email',
              prefixIcon: Icon(Icons.alternate_email)
            ),
            focusNode: emailFocusNode,
            onFieldSubmitted: (v){
              Utils.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
            },
          ),

          ValueListenableBuilder(
              valueListenable: obscurePassword,
              builder: (context, v, child)=>TextFormField(
                controller: passwordCon,
                obscureText: obscurePassword.value,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                      onPressed: (){
                        obscurePassword.value = !obscurePassword.value;
                      },
                      icon: Icon(obscurePassword.value?Icons.visibility_off_outlined:Icons.visibility_outlined)
                  )
                ),
                focusNode: passwordFocusNode,
              ),
          ),

          SizedBox(height: height * .08,),

          RoundButton(title: "Login", onPressed: (){}),
        ],
      ),
    );
  }
}
