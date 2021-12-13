import 'package:flutter_mvvm/core/app_dependency.dart';
import 'package:flutter_mvvm/data/repo/app_api_repository_impl.dart';
import 'package:flutter_mvvm/data/wrapper/api_response.dart';
import 'package:flutter_mvvm/domain/entity/post_api_entity.dart';
import 'package:flutter_mvvm/domain/repository/app_repository.dart';
import 'package:flutter_mvvm/domain/usecase/base_use_case.dart';

class PostApiUseCase extends ApiUseCase<void, List<PostItemApiEntity>> {
  final AppRepository _appRepository = dependencies<AppApiRepositoryImpl>();
  @override
  Future<ApiResponse<List<PostItemApiEntity>>> execute(void params) {
    return _appRepository.fetchPostListData();
  }
}
