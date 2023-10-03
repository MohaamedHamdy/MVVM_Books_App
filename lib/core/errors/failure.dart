import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time out!');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Time out!');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Time out!');
      case DioExceptionType.badCertificate:
        return ServerFailure('BAD CERTIFICATE OR WHATEVER DOES THAT MEAN!');
      case DioExceptionType.badResponse:
        return ServerFailure('Connection Time out!');
      case DioExceptionType.cancel:
        return ServerFailure('Request was canceled!');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Time out!');
      case DioExceptionType.unknown:
        return ServerFailure('AAAANNNND UNknown! :D');
      default:
        return ServerFailure('oops :D!');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    switch (statusCode) {
      case 400 || 401 || 403:
        return ServerFailure(response['error']['message']);
      case 404:
        return ServerFailure('Error 404, Not Found!');
      case 500:
        return ServerFailure('Internal Server Error!');
      default:
        return ServerFailure('oops :D!');
    }
  }
}
