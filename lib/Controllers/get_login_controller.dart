
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:testapis/services/login_services.dart';

class AllControllers extends GetxController {

  final fetchDataUrl='https://reqres.in/api/users?page=2';
  var loginUrl="https://reqres.in/api/login";

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey();

  fetch(){
    UserServices.fetch(fetchDataUrl);
  }

  login( TextEditingController loginEmailController, TextEditingController loginPasswordController) {
    if (loginEmailController == " " || loginPasswordController == " ") {
      print("enter credentials");

    }else{
      UserServices.login( loginUrl,loginEmailController,
          loginPasswordController);
    }
  }
}
