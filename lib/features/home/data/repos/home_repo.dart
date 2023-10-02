import 'package:dartz/dartz.dart';
import 'package:mvvm_books/core/errors/failure.dart';
import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchPopularBooks();
  Future<Either<Failure, List<BookModel>>> fetchBookOfTheWeekBook();
}
