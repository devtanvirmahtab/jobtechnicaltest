import 'package:flutter/material.dart';

import '../../../constants.dart';

class PremiumCard extends StatelessWidget {
   String? title,subtitle;
   Color? titleColor,subColor,bgColor;
   PremiumCard({
    Key? key, this.title,  this.subtitle, this.titleColor,  this.subColor, this.bgColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius:20,
                  spreadRadius: 2,
                  offset: Offset(0, 5)
              )
            ]
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title?? "" ,textAlign: TextAlign.center, style: TextStyle(color: titleColor,letterSpacing: 1.5,fontSize: 15),),
            const SizedBox(height: 15),
            Text(subtitle ?? "",textAlign: TextAlign.center ,style: TextStyle(color: subColor,fontSize: 12),),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}