import 'package:json_annotation/json_annotation.dart';

part 'payment_send_request_model.g.dart';

@JsonSerializable()
class PaymentSendRequestModel {
  bool? success;
  List<dynamic>? data;

  PaymentSendRequestModel({this.success, this.data});

  factory PaymentSendRequestModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentSendRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentSendRequestModelToJson(this);
}
