import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapis/services/login_services.dart';

class LoginController with ChangeNotifier {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey();

  loginUser(
    TextEditingController loginEmailController,
    TextEditingController loginPasswordController,
  ) async {
if(loginEmailController ==" "|| loginPasswordController==" ")
  {
    print('enter credentials');
notifyListeners();
  }

else{
// UserLoginService.login(loginEmailController,loginPasswordController);
}
  }
}
