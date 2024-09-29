import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hesabe/hesabe.dart';
import 'package:loveria/screens/payment/data/model/initial_payment_model.dart';
import 'package:loveria/screens/payment/data/model/payment_response_model/payment_response_model.dart';
import '../data/model/hesabe_credentials_model/hesabe_credentials_model.dart';
import '../data/model/initial_hesabe_model.dart';
import '../data/repo/payment_repo.dart';
import '../view/widget/payment_result.dart';

class PaymentProvider extends ChangeNotifier {
  final PaymentRepoHesabe _paymentRepo;
  PaymentProvider(this._paymentRepo);

  String paymentErrorMessage = '';
  HesabeCredentialsModel hesabeCredentials = HesabeCredentialsModel();
  RequestState hesabeDetailsState = RequestState.loading;

  late Hesabe hesabe;
  PaymentState paymentState = PaymentState.loading;
  bool paymentProcess = false;
  PaymentResponseModel? paymentResponseModel;
  String orderId = '';
  //////////////////// Fetch Payment Details - Step 1 ////////////////////////////////
  Future<void> fetchHesabeDetails(String packageId) async {
    _setLoadingState();
    final result = await _paymentRepo.getPaymentDetails(packageId);
    result.when(
      success: (success) => _onFetchSuccess(success),
      failure: (failure) => _onFetchFailure(failure.message),
    );
  }

  void _setLoadingState() {
    hesabeDetailsState = RequestState.loading;
    notifyListeners();
  }

  void _onFetchSuccess(HesabeCredentialsModel success) {
    hesabeDetailsState = RequestState.success;
    hesabeCredentials = success;
    notifyListeners();
  }

  void _onFetchFailure(String? message) {
    paymentErrorMessage = message ?? "Something went wrong";
    hesabeDetailsState = RequestState.error;
    notifyListeners();
  }

  //////////////////// Initialize Hesabe - Step 2 ////////////////////////////////
  Future<void> initializeHesabe(
      InitialHesabeModel hesabeModel, BuildContext context) async {
    hesabe = Hesabe(
      baseUrl: hesabeModel.baseUrl,
      accessCode: hesabeModel.accessCode,
      ivKey: hesabeModel.ivKey,
      secretKey: hesabeModel.secretKey,
    );
    await _setupPaymentListeners(context);
  }

  //////////////////// Initiate Payment - Step 3 ////////////////////////////////
  Future<void> initiatePayment(BuildContext context,
      InitialPaymentModel paymentModel, InitialHesabeModel hesabeModel) async {
    paymentState = PaymentState.loading;
    await initializeHesabe(hesabeModel, context);
    orderId = paymentModel.orderReferenceNumber;
    try {
      hesabe.openCheckout(context, paymentRequestObject: paymentModel.toMap());
      paymentProcess = true;
      notifyListeners();
    } catch (e) {
      _onPaymentError();
    }
  }

  void _onPaymentError() {
    paymentState = PaymentState.error;
    paymentProcess = false;
    notifyListeners();
  }

  //////////////////// Setup Payment Listeners ////////////////////////////////
  Future<void> _setupPaymentListeners(BuildContext context) async {
    hesabe.on(Hesabe.EVENT_PAYMENT_SUCCESS, (data) {
      _handlePaymentSuccess(context, data);
    });

    hesabe.on(Hesabe.EVENT_PAYMENT_ERROR, (data) {
      _handlePaymentFailure(context, data);
    });

    hesabe.on(Hesabe.EVENT_PAYMENT_CANCELLED_BY_USER, (data) {
      _handlePaymentCancellation(context, data);
    });
  }

  void _handlePaymentSuccess(BuildContext context, dynamic data) async {
    paymentResponseModel =
        PaymentResponseModel.fromJson(jsonDecode(jsonEncode(data)));
    paymentState = PaymentState.success;
    await _sendPaymentResultToApi(
        orderId: paymentResponseModel == null
            ? orderId
            : paymentResponseModel!.orderReferenceNumber ?? orderId,
        status: true,
        transactionId: paymentResponseModel!.transactionId.toString());
    _navigateToResultPage(context);
  }

  void _handlePaymentFailure(BuildContext context, dynamic data) async {
    if (data.toString() != "Payment Cancelled by user.") {
      paymentResponseModel =
          PaymentResponseModel.fromJson(jsonDecode(jsonEncode(data)));
      paymentState = PaymentState.error;
    } else {
      paymentState = PaymentState.cancel;
    }
    await _sendPaymentResultToApi(
      orderId: paymentResponseModel == null
          ? orderId
          : paymentResponseModel!.orderReferenceNumber ?? orderId,
      status: false,
      transactionId: paymentResponseModel == null
          ? "null"
          : paymentResponseModel!.transactionId ?? "null",
    );
    _navigateToResultPage(context);
  }

  void _handlePaymentCancellation(BuildContext context, dynamic data) async {
    paymentState = PaymentState.cancel;
    await _sendPaymentResultToApi(
        orderId: paymentResponseModel == null
            ? orderId
            : paymentResponseModel!.orderReferenceNumber ?? orderId,
        status: false,
        transactionId: paymentResponseModel?.transactionId ?? '');
    _navigateToResultPage(context);
  }

  //////////////////// Helper Methods ////////////////////////////////
  Future<void> _sendPaymentResultToApi({
    required String orderId,
    required bool status,
    required String transactionId,
  }) async {
    await _paymentRepo.sendPaymentResponse(
        orderId: orderId, status: status, transactionId: transactionId);
  }

  void _navigateToResultPage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => PaymentResult(
            paymentState: paymentState,
            paymentResponseModel: paymentState == PaymentState.cancel
                ? null
                : paymentResponseModel!,
          ),
        ),
        (route) => false);
    paymentProcess = false;
    notifyListeners();
  }
}

enum RequestState { loading, success, error }

enum PaymentState { loading, cancel, success, error }
