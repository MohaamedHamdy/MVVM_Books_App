// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:mvvm_books/features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_books/features/home/data/repos/home_repo.dart';

part 'book_of_the_week_state.dart';

class BookOfTheWeekCubit extends Cubit<BookOfTheWeekState> {
  BookOfTheWeekCubit(
    this.homeRepo,
  ) : super(BookOfTheWeekInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBookOfTheWeekBook() async {
    var result = await homeRepo.fetchBookOfTheWeekBook();

    emit(BookOfTheWeekLoading());
    result.fold(
      (failure) => emit(BookOfTheWeekFailure(failure.errorMessage)),
      (books) => emit(
        BookOfTheWeekSuccess(books),
      ),
    );
  }
}
