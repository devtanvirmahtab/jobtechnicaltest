import 'package:flutter/material.dart';

import '../../../constants.dart';

class DemoAppPost extends StatelessWidget {
  String? title,subtitle,image;
  double? imageWidth;
   DemoAppPost({
     this.title,this.subtitle,this.image,this.imageWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        decoration: BoxDecoration(
            color: Colors.white,
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
          children: [
            Align(alignment:Alignment.topLeft, child: Text(title ?? "", style: TextStyle(color: Color(0xFF9B4D9D),letterSpacing: 1.5,fontSize: 18),)),
            const SizedBox(height: 25),
            Text(subtitle?? "",textAlign: TextAlign.start,style: TextStyle(color: bodyTextColor,letterSpacing: 1.5,fontSize: 15),),
            const SizedBox(height: 10),
            Align(alignment:Alignment.bottomRight,child: Image.asset(image ?? "assets/images/deskdoctor.png",width: imageWidth,))
          ],
        ),
      ),
    );
  }
}