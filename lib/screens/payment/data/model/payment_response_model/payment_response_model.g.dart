// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentResponseModel _$PaymentResponseModelFromJson(
        Map<String, dynamic> json) =>
    PaymentResponseModel(
      resultCode: json['resultCode'] as String?,
      amount: json['amount'] as String?,
      paymentToken: json['paymentToken'] as String?,
      paymentId: json['paymentId'],
      paidOn: json['paidOn'] as String?,
      orderReferenceNumber: json['orderReferenceNumber'] as String?,
      auth: json['auth'],
      trackId: json['trackID'] as String?,
      transactionId: json['transactionId'],
      id: (json['Id'] as num?)?.toInt(),
      bankReferenceId: json['bankReferenceId'] as String?,
      variable1: json['variable1'] as String?,
      variable2: json['variable2'] as String?,
      variable3: json['variable3'] as String?,
      variable4: json['variable4'] as String?,
      variable5: json['variable5'] as String?,
      method: (json['method'] as num?)?.toInt(),
      administrativeCharge: json['administrativeCharge'] as String?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentResponseModelToJson(
        PaymentResponseModel instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'amount': instance.amount,
      'paymentToken': instance.paymentToken,
      'paymentId': instance.paymentId,
      'paidOn': instance.paidOn,
      'orderReferenceNumber': instance.orderReferenceNumber,
      'auth': instance.auth,
      'trackID': instance.trackId,
      'transactionId': instance.transactionId,
      'Id': instance.id,
      'bankReferenceId': instance.bankReferenceId,
      'variable1': instance.variable1,
      'variable2': instance.variable2,
      'variable3': instance.variable3,
      'variable4': instance.variable4,
      'variable5': instance.variable5,
      'method': instance.method,
      'administrativeCharge': instance.administrativeCharge,
      'customer': instance.customer,
    };
