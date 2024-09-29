import 'package:json_annotation/json_annotation.dart';

import 'customer.dart';

part 'payment_response_model.g.dart';

@JsonSerializable()
class PaymentResponseModel {
  String? resultCode;
  String? amount;
  String? paymentToken;
  dynamic paymentId;
  String? paidOn;
  String? orderReferenceNumber;
  dynamic auth;
  @JsonKey(name: 'trackID')
  String? trackId;
  dynamic transactionId;
  @JsonKey(name: 'Id')
  int? id;
  String? bankReferenceId;
  String? variable1;
  String? variable2;
  String? variable3;
  String? variable4;
  String? variable5;
  int? method;
  String? administrativeCharge;
  Customer? customer;

  PaymentResponseModel({
    this.resultCode,
    this.amount,
    this.paymentToken,
    this.paymentId,
    this.paidOn,
    this.orderReferenceNumber,
    this.auth,
    this.trackId,
    this.transactionId,
    this.id,
    this.bankReferenceId,
    this.variable1,
    this.variable2,
    this.variable3,
    this.variable4,
    this.variable5,
    this.method,
    this.administrativeCharge,
    this.customer,
  });

  factory PaymentResponseModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentResponseModelToJson(this);
}
