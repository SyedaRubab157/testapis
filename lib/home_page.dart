import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapis/Controllers/get_login_controller.dart';
import 'package:testapis/services/login_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AllControllers _fetchController= Get.find<AllControllers>();
  @override
  void initState() {
    // TODO: implement initState
    // UserServices.fetch(_fetchController.fetchDataUrl);
    _fetchController.fetch();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
          children: [Flexible(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return
                  ListTile(title: Text("hi im a tile"),);
              },),
          )
          ]),
    );
  }
}
