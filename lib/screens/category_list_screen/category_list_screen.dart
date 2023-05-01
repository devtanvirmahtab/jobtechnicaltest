import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobtechnicaltest/utils/date_utils.dart' as date_util;

import '../../getx_controller/category_controller.dart';
import 'widgets/app_bar_leading.dart';
import 'widgets/reusable_category_widget.dart';
import 'widgets/selected_item_button.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool selectedItem = false;
  DateTime currentDateTime = DateTime.now();

  CategoryController controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 70,
          leading: AppBarLeading(),
          title: Text(
            currentDateTime.day.toString() +
                " " +
                date_util.DateUtils.months[currentDateTime.month - 1],
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey.shade300,
              child: const Icon(
                Icons.question_mark,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableCategoryWidget(
                    controller: controller,
                    categoryIndex: 0,
                  ),
                  ReusableCategoryWidget(
                    controller: controller,
                    categoryIndex: 1,
                  ),
                  ReusableCategoryWidget(
                    controller: controller,
                    categoryIndex: 2,
                  ),
                  ReusableCategoryWidget(
                    controller: controller,
                    categoryIndex: 3,
                  ),
                  ReusableCategoryWidget(
                    controller: controller,
                    categoryIndex: 4,
                  ),
                  ReusableCategoryWidget(
                    controller: controller,
                    categoryIndex: 5,
                  ),
                  const SizedBox(height: 25),
                  SelectedItemButton(),
                ],
              ),
            ),
          ),
        ));
  }
}


