import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jobtechnicaltest/constants.dart';
// import 'utils/date_utils.dart' as date_util;

import 'package:jobtechnicaltest/utils/date_utils.dart' as date_util;

class HorizontalDateView extends StatefulWidget {
  const HorizontalDateView({Key? key, }) : super(key: key);

  @override
  _HorizontalDateViewState createState() => _HorizontalDateViewState();
}

class _HorizontalDateViewState extends State<HorizontalDateView> {
  double width = 0.0;
  double height = 0.0;
  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();

  @override
  void initState() {
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    super.initState();
  }


  Widget hrizontalCapsuleListView() {
    return Container(
      width: width,
      height: 150,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: currentMonthList.length,
        itemBuilder: (BuildContext context, int index) {
          return capsuleView(index);
        },
      ),
    );
  }

  Widget capsuleView(int index) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentDateTime = currentMonthList[index];
            });
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  date_util.DateUtils
                      .weekdays[currentMonthList[index].weekday - 1],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: bodyTextColor),
                ),
                const SizedBox(height: 18),
                CircleAvatar(
                  backgroundColor: (currentMonthList[index].day != currentDateTime.day)
                      ? Colors.white
                      : primaryColor,
                  child: Text(
                    currentMonthList[index].day.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:
                        (currentMonthList[index].day != currentDateTime.day)
                            ? Colors.black
                            : Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget SelectableDateWidget() {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              blurRadius: 4,
              color: Colors.black12,
              offset: Offset(4, 4),
              spreadRadius: 2)
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            hrizontalCapsuleListView(),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SelectableDateWidget();
  }
}


