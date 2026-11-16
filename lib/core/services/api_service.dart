import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://www.themealdb.com/api/json/v1/1';

  Future getData({required String endPoint, CancelToken? cancelToken}) async {
    final response = await _dio.get(
      '$_baseUrl/$endPoint',
      cancelToken: cancelToken,
    );
    log(response.toString());
    return response.data;
  }
}
