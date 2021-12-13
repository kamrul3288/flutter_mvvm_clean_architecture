import 'package:flutter/material.dart';
import 'package:flutter_mvvm/base/view_state.dart';
import 'package:flutter_mvvm/presentation/postlist/post_list_view_model.dart';
import 'package:flutter_mvvm/res/app_string.dart';
import 'package:flutter_mvvm/res/text_style_manager.dart';
import 'package:provider/provider.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({Key? key}) : super(key: key);
  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {

  @override
  void initState() {
    Future.delayed(Duration.zero,(){
      Provider.of<PostListViewModel>(context,listen: false).fetchPostList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.title),
      ),

      body: Consumer<PostListViewModel>(
        builder: (context,viewModel,child){
          if(viewModel.state == ScreenState.LOADING) {
            return const Center(child: CircularProgressIndicator(),);

          } else if(viewModel.state == ScreenState.ERROR) {
            return Center(child: Text(viewModel.message),);

          } else {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              itemCount: viewModel.postList.length,
              itemBuilder: (context,position){
                return ListTile(
                  leading: Text(viewModel.postList[position].postId.toString(),style: getBoldTextStyle(),),
                  title: Text(viewModel.postList[position].title,style: getSemiBoldTextStyle(fontSize: 13),),
                  subtitle: Text(viewModel.postList[position].description,style: getLightTextStyle(),),
                );
              },
            );
          }
        },
      ),

    );
  }
}
