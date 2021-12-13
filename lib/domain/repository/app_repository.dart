import 'package:flutter_mvvm/data/wrapper/api_response.dart';
import 'package:flutter_mvvm/domain/entity/post_api_entity.dart';

abstract class AppRepository {
  Future<ApiResponse<List<PostItemApiEntity>>> fetchPostListData();
}
