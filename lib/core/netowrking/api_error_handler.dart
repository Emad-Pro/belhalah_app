import 'api_error_model.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is http.ClientException) {
      return ApiErrorModel(message: "Connection to server failed");
    } else if (error is FormatException) {
      return ApiErrorModel(message: "Invalid response format");
    } else if (error is http.Response) {
      return _handleError(error.statusCode, error.body);
    } else {
      return ApiErrorModel(
          message: "Unexpected error occurred: ${error.toString()}");
    }
  }

  static ApiErrorModel _handleError(int statusCode, String? errorBody) {
    try {
      final Map<String, dynamic> errorJson = json.decode(errorBody ?? '{}');
      return ApiErrorModel(
        message: errorJson['message'] ?? "Unknown error occurred",
        code: statusCode,
        errors: errorJson['data'],
      );
    } catch (e) {
      return ApiErrorModel(
        message: "Unknown error occurred",
        code: statusCode,
      );
    }
  }
}
