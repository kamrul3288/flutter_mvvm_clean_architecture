import 'package:flutter_mvvm/core/app_constant.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Uri _parseUrl(String url) => Uri.parse(url);

abstract class AppApiService {
  final baseUrl = AppConstant.baseUrl;

  Future<Response> postListApi() =>
      http.get(_parseUrl("$baseUrl/posts"));

  Future<Response> postDetailsApi(int postId) =>
      http.get(_parseUrl("$baseUrl/posts/$postId"));
}
