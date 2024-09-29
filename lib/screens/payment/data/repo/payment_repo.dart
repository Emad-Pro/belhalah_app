import 'dart:convert';

import 'package:loveria/common/services/data_transport.dart';
import 'package:loveria/core/netowrking/api_error_handler.dart';
import 'package:loveria/core/netowrking/api_result.dart';
import 'package:loveria/screens/payment/data/model/payment_send_request_model/payment_send_request_model.dart';

import '../model/hesabe_credentials_model/hesabe_credentials_model.dart';

class PaymentRepoHesabe {
  Future<ApiResult> getPaymentDetails(String packageId) async {
    try {
      final response =
          await get("https://belhalal.net/public/api/pay-package/$packageId");

      return ApiResult.success(
          HesabeCredentialsModel.fromJson(jsonDecode(response)));
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  Future<ApiResult> sendPaymentResponse({
    required String orderId,
    required bool status,
    required String transactionId,
  }) async {
    try {
      final response = await post(
          "https://belhalal.net/public/api/update-payment-status",
          inputData: {
            "order_uid": orderId,
            "status": status,
            "transaction_id": transactionId
          });

      return ApiResult.success(
          PaymentSendRequestModel.fromJson(jsonDecode(response)));
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
