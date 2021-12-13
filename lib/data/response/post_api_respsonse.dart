
class PostItemListApiResponse{
  PostItemListApiResponse({required this.postItemList});
  List<PostItem> postItemList;

  factory PostItemListApiResponse.fromJson(List<dynamic> json){
    List<PostItem> postItemList = json.map((i)=>PostItem.fromJson(i)).toList();
    return PostItemListApiResponse(postItemList: postItemList);
  }
}


class PostItem{
  PostItem({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  PostItem.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  int? userId;
  int? id;
  String? title;
  String? body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['body'] = body;
    return map;
  }
}
