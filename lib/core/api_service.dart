import 'dart:io';

import 'package:http/http.dart';

class ApiService {
  final HttpClient _httpClient;

  const ApiService({
    required HttpClient httpClient,
  }) : _httpClient = httpClient;
}
