import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapis/Controllers/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final loginProvider= Provider.of<LoginController>(context,listen: false);
    return Scaffold(
      body:Consumer<LoginController>(builder:(context, LoginValues, child) {
        return  Form(
          key: LoginValues.loginFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: LoginValues.loginEmailController,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  const  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: LoginValues.loginPasswordController,
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  const   SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () {
                   if(LoginValues.loginFormKey.currentState!.validate()){
                     LoginValues.loginUser( LoginValues.loginEmailController,
                       LoginValues.loginPasswordController,);
                   }
                  }, child: Text('Login')),
                ]),
          ),
        );

      }, ),
    );
  }
}
