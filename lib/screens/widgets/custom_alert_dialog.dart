import 'package:flutter/material.dart';

import '../../getx_controller/category_controller.dart';

class CustomAlertDialog extends StatelessWidget {
  final Color bgColor;
  final String? message;
  final String? title;
  final CategoryController controller;
  final double circularBorderRadius;

  CustomAlertDialog({
    this.message,
    this.title,
    this.circularBorderRadius = 15.0,
    this.bgColor = Colors.white, required this.controller,
  })  : assert(bgColor != null),
        assert(circularBorderRadius != null);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: message != null ? Text(message?? "",style: TextStyle(color: Colors.white),) : null,
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circularBorderRadius)),
      actions: [
        OutlinedButton(onPressed: (){
            if(controller.selectedItemList.contains(title)) {
              Navigator.pop(context);
            }else {
              controller.itemAdd( title);
              Navigator.pop(context);
            }
            print(controller.selectedItemList);
          },
          child: Text("Yes",style: TextStyle(color: Colors.white))),
        OutlinedButton(onPressed: (){
          if(controller.selectedItemList.contains(title)) {
            controller.removeItem(title);
            Navigator.pop(context);
          }else {
            Navigator.pop(context);
          }
          print(controller.selectedItemList);
          }, child: Text("No",style: TextStyle(color: Colors.white))),

      ],
    );
  }
}