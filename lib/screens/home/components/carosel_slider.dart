import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'dateview_circleview.dart';

class CaroselSlider extends StatelessWidget {
  final CarouselController _carouselController = CarouselController();
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);

   CaroselSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
              height: 650,
              viewportFraction: 1,
              onPageChanged: (index,_){
                _currentSelectedIndex.value = index;
              },
            ),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0,vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: DateViewAndCircleView()
                  );
                },
              );
            }).toList(),
          ),
          ValueListenableBuilder(valueListenable: _currentSelectedIndex, builder: (context, updatedvalue,_){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0;i<= 4;i++)
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    margin: const EdgeInsets.all(3),
                    height: 8,
                    width: i == _currentSelectedIndex.value ? 30 : 8,
                    decoration: BoxDecoration(
                      color: i == _currentSelectedIndex.value ? primaryColor : Colors.black26,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
              ],
            );
          }),
        ],
      ),
    );
  }
}