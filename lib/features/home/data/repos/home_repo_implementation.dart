import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mvvm_books/core/errors/failure.dart';
import 'package:mvvm_books/core/utils/api_service.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_books/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService api;

  HomeRepoImpl(this.api);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBookOfTheWeekBook() async {
    final random = Random();
    try {
      var allIds = await api.get(endPoints: 'volumes?q=subject:programming');
      List ids = [];
      List<BookModel> books = [];
      for (var id in allIds['items']['id']) {
        ids.add(id);
      }
      var randomId = random.nextInt(ids.length);

      var data = await api.get(endPoints: 'volumes/:$randomId');

      for (var item in data['items']) {
        books.add(item);
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await api.get(endPoints: 'volumes?q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(item);
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
/*
  @override
  Future<Either<Failure, List<BookModel>>> fetchPopularBooks() async {
    try {
      var data = await api.get(endPoints: 'volumes?q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(item);
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }*/
}
