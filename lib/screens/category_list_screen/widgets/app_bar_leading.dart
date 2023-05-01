import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../getx_controller/bottom_navigation_controller.dart';

class AppBarLeading extends StatelessWidget {

  BottomNavigationController bController = Get.put(BottomNavigationController());

   AppBarLeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        bController.barControl(0);
      },
      child: Container(
          margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10,right: 5),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: .2,
                    blurRadius: 3,
                    offset: Offset(0, 5))
              ]),
          child: Center(
            child: Image.asset(
              "assets/images/backaccow.png",
              height: 40,
              width: 40,
            ),
          )),
    );
  }
}