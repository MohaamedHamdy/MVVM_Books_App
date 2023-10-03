import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_books/core/utils/api_service.dart';
import 'package:mvvm_books/features/home/data/repos/home_repo_implementation.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio: Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
