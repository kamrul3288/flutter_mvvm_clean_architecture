import 'package:flutter_mvvm/core/app_extension.dart';
import 'package:flutter_mvvm/data/mapper/base_mapper.dart';
import 'package:flutter_mvvm/data/response/post_api_respsonse.dart';
import 'package:flutter_mvvm/domain/entity/post_api_entity.dart';

class PostApiResponseMapper
    extends Mapper<PostItemListApiResponse, List<PostItemApiEntity>> {
  @override
  List<PostItemApiEntity> mapFromApiResponse(PostItemListApiResponse type) {
    return type.postItemList.map((e) {
      return PostItemApiEntity(
          postId: (e.id).orNull(),
          title: (e.title).orEmpty(),
          description: (e.body).orEmpty());
    }).toList();
  }
}
