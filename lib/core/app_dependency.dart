import 'package:flutter_mvvm/data/mapper/post_api_response_mapper.dart';
import 'package:flutter_mvvm/data/repo/app_api_repository_impl.dart';
import 'package:flutter_mvvm/domain/usecase/post_api_use_case.dart';
import 'package:get_it/get_it.dart';

GetIt dependencies = GetIt.instance;

setDependencies() {
  dependencies.registerLazySingleton(() => PostApiUseCase());
  dependencies.registerLazySingleton(() => PostApiResponseMapper());
  dependencies.registerLazySingleton(() => AppApiRepositoryImpl());
}
