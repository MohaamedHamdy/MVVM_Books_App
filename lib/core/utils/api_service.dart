// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = 'https://www.googleapis.com/books/v1/';

  Dio dio;

  ApiService({
    required this.dio,
  });

  Future<Map<String, dynamic>> get({required String endPoints}) async {
    var response = await dio.get("$baseUrl$endPoints");
    return response.data;
  }
}
