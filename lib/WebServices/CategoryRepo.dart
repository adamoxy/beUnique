import 'dart:convert';

import 'package:beunique_day1/WebServices/ApiHandler.dart';
import 'package:beunique_day1/Models/ApiResponse.dart';
import 'package:beunique_day1/Models/CategoryModel.dart';
import 'package:beunique_day1/Utiles/Constants.dart';

class CategoryRepo {
  String categoryUri = "category/5fe8462f65955756da4d1451";
  Future<ApiResponse> fetchCategoryList() async {
    ApiResponse apiResponse;
    try {
      await ApiHandler()
          .getMethodWithoutToken(url: baseuRL + categoryUri)
          .then((serverApiResponse) async {
        if (serverApiResponse.code == 1) {
          final categoryModel = CategoryModel.fromMap(serverApiResponse.object);
          if (categoryModel.status == "success") {
            print("#***" * 9);
            print(categoryModel.status);
            print(categoryModel.category);
            apiResponse = new ApiResponse(
                code: 1,
                msg: categoryModel.status,
                object: categoryModel.category);
          } else {
            apiResponse = new ApiResponse(code: 0, msg: categoryModel.status);
          }
        } else {
          apiResponse =
              new ApiResponse(code: apiResponse.code, msg: apiResponse.msg);
        }
      });
    } catch (error) {
      apiResponse = new ApiResponse(code: 0, msg: "Network Error");
    }
    return apiResponse;
  }
}
