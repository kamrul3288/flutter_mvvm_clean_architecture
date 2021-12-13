import 'package:flutter_mvvm/core/app_dependency.dart';
import 'package:flutter_mvvm/data/mapper/post_api_response_mapper.dart';
import 'package:flutter_mvvm/data/response/post_api_respsonse.dart';
import 'package:flutter_mvvm/data/service/app_api_service.dart';
import 'package:flutter_mvvm/data/wrapper/api_response.dart';
import 'package:flutter_mvvm/data/wrapper/network_bound_resources.dart';
import 'package:flutter_mvvm/domain/entity/post_api_entity.dart';
import 'package:flutter_mvvm/domain/repository/app_repository.dart';

class AppApiRepositoryImpl extends NetworkBoundResources with AppApiService, AppRepository {
  final _postApiMapper = dependencies<PostApiResponseMapper>();

  @override
  Future<ApiResponse<List<PostItemApiEntity>>> fetchPostListData() {
    return downloadNetworkData<List<PostItemApiEntity>>(
        apiCall: postListApi(),
        mapJsonToModel: (json)=>_postApiMapper.mapFromApiResponse(PostItemListApiResponse.fromJson(json))
    );
  }
}
