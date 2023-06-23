import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapis/Controllers/get_login_controller.dart';

class GetLoginScreen extends StatefulWidget {
  const GetLoginScreen({super.key});

  @override
  State<GetLoginScreen> createState() => _GetLoginScreenState();
}

class _GetLoginScreenState extends State<GetLoginScreen> {
  final AllControllers _getLoginController=AllControllers();
  //controller instance to access values
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: _getLoginController.loginFormKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            TextFormField(
              controller: _getLoginController.loginEmailController,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: _getLoginController.loginPasswordController,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                if(_getLoginController.loginFormKey.currentState!.validate()){
                  _getLoginController.login(
                      _getLoginController.loginEmailController,
                      _getLoginController.loginPasswordController);
                }
              }, child: Text("Login")),
            ),
          ]),
        ),
      ),
    );
  }
}
