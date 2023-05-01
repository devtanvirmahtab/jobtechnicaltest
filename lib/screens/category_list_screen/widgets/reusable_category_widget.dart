import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../getx_controller/category_controller.dart';
import '../../widgets/custom_alert_dialog.dart';
import 'category_title.dart';

class ReusableCategoryWidget extends StatelessWidget {
   ReusableCategoryWidget({
    Key? key,
    required this.controller, required this.categoryIndex,
  }) : super(key: key);

  final CategoryController controller;
  final int categoryIndex;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: CategoryTitle(text: controller.categoryModel.data?.symptoms?[categoryIndex].title?? ""),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categoryModel.data?.symptoms?[categoryIndex].subSymptom?.length ?? 0,
            itemBuilder: (context,index){
              String? title = controller.categoryModel.data!.symptoms![categoryIndex].subSymptom![index].title;
              return GestureDetector(
                onTap: (){

                  var dialog = CustomAlertDialog(
                    message: "Are you sure, want to select this?",
                    title: title,
                    controller: controller,
                    bgColor: primaryColor.withOpacity(.7),
                  );
                  showDialog(context: context, builder: (BuildContext context) => dialog);

                  // if(controller.selectedItemList.contains(title)) {
                  //   controller.removeItem(title);
                  // }else {
                  //   controller.itemAdd( title);
                  // }
                  // print(controller.selectedItemList);

                },
                child: SizedBox(
                  width: 90,
                  child: Column(
                    children: [
                      GetBuilder<CategoryController>(
                          builder: (controller) {
                            return Container(
                              margin: const EdgeInsets.all(10),
                              padding:const EdgeInsets.all(10) ,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: controller.selectedItemList.contains(title) ? primaryColor : Colors.transparent,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: primaryColor,width: 1)
                              ),
                              child: Image.network("${controller.categoryModel.data?.symptoms?[categoryIndex].subSymptom![index].icon}",color: controller.selectedItemList.contains(title) ? Colors.white :  Colors.grey.shade500,),
                            );
                          }
                      ),
                      Expanded(child: Text(controller.categoryModel.data?.symptoms?[categoryIndex].subSymptom![index].title ?? "",maxLines: 2, textAlign: TextAlign.center,style: TextStyle(),))
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }


}

