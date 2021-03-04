import 'dart:convert';

import 'package:beunique_day1/WebServices/ApiHandler.dart';
import 'package:beunique_day1/Models/ApiResponse.dart';
import 'package:beunique_day1/Models/CategoryModel.dart';
import 'package:beunique_day1/Models/ProfileModel.dart';
import 'package:beunique_day1/Utiles/Constants.dart';

class UserProfileRepo {
  ////////////////////////////////  Method for LogInWithOtp
  String profileUri = "profile/603df338c55e604e6ef5f91b";

  Future<ApiResponse> fetchProfileInfo() async {
    ApiResponse apiResponse;
    try {
      await ApiHandler()
          .getMethodWithoutToken(url: baseuRL + profileUri)
          .then((serverApiResponse) async {
        if (serverApiResponse.code == 1) {
          final profileModel = ProfileModel.fromMap(serverApiResponse.object);
          if (profileModel.status == "success") {
            print("#***" * 9);
            print(profileModel.status);
            print(profileModel.data);
            apiResponse = new ApiResponse(
                code: 1, msg: profileModel.status, object: profileModel.data);
          } else {
            apiResponse = new ApiResponse(code: 0, msg: profileModel.status);
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
