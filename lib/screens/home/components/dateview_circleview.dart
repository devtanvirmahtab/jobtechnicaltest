import 'package:flutter/material.dart';
import 'package:jobtechnicaltest/constants.dart';

import '../cirle/semi_circle.dart';
import '../widgets/dateshow.dart';

class DateViewAndCircleView extends StatelessWidget {
  const DateViewAndCircleView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius:10,
                spreadRadius: 2,
                offset: const Offset(0, 5)
            )
          ]
      ),
      child: Column(
        children: [
          const HorizontalDateView(),
          const SizedBox(height: 30,),
          const SemiCircle(progress: 0.05,color: Colors.blue, width: 30,),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(20)
            ),
            child: const Text("Drink Herbal Tea For Cramps",style: TextStyle(color: primaryColor,fontSize: 16),)
          ),
          const SizedBox(height: 20),


        ],
      ),
    );
  }
}