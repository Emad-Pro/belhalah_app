// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_send_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentSendRequestModel _$PaymentSendRequestModelFromJson(
        Map<String, dynamic> json) =>
    PaymentSendRequestModel(
      success: json['success'] as bool?,
      data: json['data'] as List<dynamic>?,
    );

Map<String, dynamic> _$PaymentSendRequestModelToJson(
        PaymentSendRequestModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
