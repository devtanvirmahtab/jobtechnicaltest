import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String text;
  const CategoryTitle({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16,letterSpacing: 1.5),);
  }
}