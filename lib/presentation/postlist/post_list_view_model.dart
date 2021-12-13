import 'package:flutter_mvvm/base/view_model.dart';
import 'package:flutter_mvvm/core/app_dependency.dart';
import 'package:flutter_mvvm/data/wrapper/api_response.dart';
import 'package:flutter_mvvm/domain/entity/post_api_entity.dart';
import 'package:flutter_mvvm/domain/usecase/post_api_use_case.dart';

class PostListViewModel extends ViewModel {
  final _postApiUseCase = dependencies<PostApiUseCase>();

  final List<PostItemApiEntity> postList = [];

  fetchPostList() async {
    loadingState();
    final response = await _postApiUseCase.execute(null);
    if (response.success) {
      postList.addAll(response.data());
      successfulState();
    } else {
      message = response.error().errorMessage;
      errorState();
    }
  }
}
