
import 'package:get/get.dart';
import 'package:jobtechnicaltest/data/network_utils.dart';
import 'package:jobtechnicaltest/data/urls.dart';

import '../data/models/category_model.dart';

class CategoryController extends GetxController{
  CategoryModel categoryModel = CategoryModel();

  bool categoryInProgress = false;
  List selectedItemList = [];

  itemAdd(String? title){
    selectedItemList.add(title);
    update();
  }

  removeItem(String? title){
    selectedItemList.remove(title);
    update();
  }


  Future<bool> getCategory()async{
    categoryInProgress = true;
    update();
    final response = await NetworkUtiles().getMethod(Urls.baseUrl);
    // print("category response $response");
    categoryInProgress = false;
    if(response != null){
      categoryModel = CategoryModel.fromJson(response);
      update();
      return true;
    }else{
      update();
      return false;
    }
  }

}