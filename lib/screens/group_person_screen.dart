import 'package:flutter/material.dart';

class GroupPersonScreen extends StatefulWidget {
  const GroupPersonScreen({Key? key}) : super(key: key);

  @override
  State<GroupPersonScreen> createState() => _GroupPersonScreenState();
}

class _GroupPersonScreenState extends State<GroupPersonScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child:  Text("Group person Screen"),
      ),
    );
  }
}
