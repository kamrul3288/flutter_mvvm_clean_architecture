import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/data/wrapper/api_response.dart';
import 'package:http/http.dart' as http;

abstract class NetworkBoundResources {
  Future<ApiResponse<ResultType>> downloadNetworkData<ResultType>({
    required Future<http.Response> apiCall,
    required ResultType Function(dynamic responseJson) mapJsonToModel
  }) async {
    try {
      final responseBody = await apiCall;
      if (responseBody.statusCode == 200) {
        debugPrint(responseBody.request?.method.toString());
        debugPrint(responseBody.request?.url.toString());
        debugPrint(responseBody.request?.headers.toString());
        debugPrint(responseBody.body.toString());
        var responseJson = jsonDecode(responseBody.body);
        return Success(mapJsonToModel(responseJson));
      } else {
        return Failure(jsonDecode(responseBody.body)['message'] ?? "Unknown error occurred",responseBody.statusCode);
      }
    } on SocketException {
      debugPrint("No Internet Connection");
      return Failure("No Internet Connection", 0);
    }catch(e){
      debugPrint(e.toString());
      return Failure("Unknown error occurred", 0);
    }
  }
}
