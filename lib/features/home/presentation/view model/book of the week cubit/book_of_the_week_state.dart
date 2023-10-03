part of 'book_of_the_week_cubit.dart';

sealed class BookOfTheWeekState extends Equatable {
  const BookOfTheWeekState();

  @override
  List<Object> get props => [];
}

final class BookOfTheWeekInitial extends BookOfTheWeekState {}

final class BookOfTheWeekLoading extends BookOfTheWeekState {}

final class BookOfTheWeekSuccess extends BookOfTheWeekState {
  final List<BookModel> book;

  const BookOfTheWeekSuccess(this.book);
}

final class BookOfTheWeekFailure extends BookOfTheWeekState {
  final String errorMessage;

  const BookOfTheWeekFailure(this.errorMessage);
}
