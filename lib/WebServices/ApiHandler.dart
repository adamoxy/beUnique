// Copyright (c) 2020, adamoxy@cyber-corner.com.
// Please feel free to use with any other application as an Skelton.
// But must refer to the Author.
// All rights reserved. Use of this source code is governed by a
// GNU licences.
// ApiHandler v0.1
import 'package:beunique_day1/Models/ApiResponse.dart';
import 'package:dio/dio.dart';

class ApiHandler {
  /// @description: encapsulation for Get Calls but Without authentication
  /// @methodName: getMethodWithoutToken
  /// @methodType: get
  /// @params: String url
  /// @response: ApiResponse
  /// @body: none

  Future<ApiResponse> getMethodWithoutToken({String url}) async {
    print(
        "########################   BackTrack To ApiHandler => getMethodWithoutToken ");
    ApiResponse apiResponse;
    Dio dio = new Dio();
    try {
      var response = await dio.get(
        url,
        options: Options(
          sendTimeout: 5000,
          receiveTimeout: 3000,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      consoleLogResponse(response, "putMethodWithoutToken");
      if (response.statusCode == 200) {
        apiResponse = new ApiResponse(
            code: 1,
            msg: "response completed successful",
            object: response.data);
      } else {
        return _responseExceptionWrapper(response);
      }
    } on DioError catch (e) {
      return _dioExceptionWrapper(e);
    } on FormatException {
      throw Exception('Format Exception ');
    } on IntegerDivisionByZeroException {
      throw Exception('IntegerDivisionByZeroException ');
    } catch (Exception) {
      throw Exception(' Unknown Exception ');
    } finally {
      dio.close();
    }
    return apiResponse;
  }

  /// this method is only for debugging release please don't forget to delete it or comment it when deploy
  void consoleLogResponse(Response response, String msg) {
    print(
        "########################################  ApiHandler Back Track: $msg");
    print("####################################### baseUrl");
    print(response.request.baseUrl);
    print("####################################### statusCode");
    print(response.statusCode);
    print("####################################### headers");
    print(response.headers);
    print("####################################### request");
    print(response.toString());
    print("####################################### data");
    print(response.data);
  }

  /// this method is only for debugging release please don't forget to delete it or comment it when deploy
  ApiResponse _dioExceptionWrapper(DioError exception) {
    switch (exception.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        throw Exception('Exceeded Connection Time');
        break;
      case DioErrorType.SEND_TIMEOUT:
        throw Exception('Exceeded Connection Time');
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        throw Exception('Exceeded receiving Data Time');
        break;
      case DioErrorType.RESPONSE:
        throw Exception('Exceeded Response Time');
        break;
      case DioErrorType.CANCEL:
        throw Exception('Request was Cancelled');
        break;
      case DioErrorType.DEFAULT:
        throw Exception('Unknown Error');
        break;
      default:
        throw Exception('Unknown Error (:- ');
        break;
    }
  }

  /// this method is only for debugging release please don't forget to delete it or comment it when deploy
  ApiResponse _responseExceptionWrapper(Response response) {
    var apiResponse = new ApiResponse();
    if (response.statusCode == 200) {
      apiResponse = new ApiResponse(code: 1, object: response.data);
    } else if (response.statusCode > 299 || response.statusCode < 400) {
      apiResponse =
          new ApiResponse(code: 299, msg: "could not connect to server");
    } else if (response.statusCode > 399 || response.statusCode < 500) {
      apiResponse = new ApiResponse(
          code: 399, msg: "Sorry Bad Request,Pleas Try Again Later");
    } else if (response.statusCode > 499) {
      apiResponse = new ApiResponse(code: 499, msg: "Server Error");
    }
    return apiResponse;
  }
}
