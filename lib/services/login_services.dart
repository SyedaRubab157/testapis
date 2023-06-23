import 'dart:convert';

import 'package:flutter/src/widgets/editable_text.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:testapis/home_page.dart';

class UserServices {

static fetch (String Url)async {
try{
  http.Response response=await http.get(Uri.parse(Url),);
  if(response.statusCode==200){
    Map<String,dynamic> fetchData=jsonDecode(response.body.toString());
    List<dynamic>fetchDataList=fetchData['data'];
    print(fetchDataList);
  }else{
    print(response.statusCode);
  }
}
catch(e){
  print("this is error $e");
}

}
  static login( String Url ,TextEditingController loginEmailController,
      TextEditingController loginPasswordController) async {
    try {
      var header = {"Content-Type": "application/json"};
      var body = {
        'email': loginEmailController.text.trim(),
        'password': loginPasswordController.text.trim()
      };
      http.Response response = await http.post(
        Uri.parse(Url),
        headers: header,
        body: jsonEncode(body),
      );
      if (response.statusCode == 200) {
        Map jsonToken = jsonDecode(response.body.toString());
        print(jsonToken['token']);
        if (jsonToken['token'] != null) {
          Get.offAll(HomePage());
        } else {
          print('fail');
        }
      }else{
        print(response.statusCode);
      }
    } catch (e) {
      print(" this is Error $e");
    }
  }
}
