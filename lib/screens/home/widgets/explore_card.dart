import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExploreCard extends StatelessWidget {
  final String text, image;
  const ExploreCard({
    Key? key, required this.text, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,  
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius:20,
                spreadRadius: 1
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(image,height: 40,)),
          SizedBox(height: 5),
          Text(text,style: TextStyle(color: bodyTextColor,letterSpacing: 1,fontSize: 12),)
        ],
      ),
    );
  }
}