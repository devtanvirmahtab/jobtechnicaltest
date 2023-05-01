import 'package:flutter/material.dart';

import '../../../constants.dart';

class SymptomsCard extends StatelessWidget {
  final String text, image;
  const SymptomsCard({
    Key? key, required this.text, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius:20,
            spreadRadius: 1
          )
        ]
      ),
      child: Card(
        elevation: 0,
        color: Colors.white,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(child: Padding(
                padding: const EdgeInsets.all(14),
                child: Image.asset(image,height: 30,color:primaryColor,),
              ),backgroundColor: primaryColor.withOpacity(.08),radius: 25,),
              SizedBox(width: 15),
               Expanded(child: Text(text,style: TextStyle(color: bodyTextColor,fontSize: 16,letterSpacing: 1.4,),maxLines: 2,)),
            ],
          ),
        ),
      ),
    );
  }
}