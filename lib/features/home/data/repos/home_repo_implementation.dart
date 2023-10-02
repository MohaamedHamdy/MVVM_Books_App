import 'package:dartz/dartz.dart';
import 'package:mvvm_books/core/errors/failure.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_books/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBookOfTheWeekBook() {
    // TODO: implement fetchBookOfTheWeekBook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchPopularBooks() {
    // TODO: implement fetchPopularBooks
    throw UnimplementedError();
  }
}
