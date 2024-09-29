// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InitialPaymentModel {
  final String merchantCode;
  final String amount;
  final String paymentType;
  final String responseUrl;
  final String failureUrl;
  final String name;
  final String? mobileNumber;
  final String email;
  final String version;
  final String orderReferenceNumber;
  final String? variable1;
  final String? variable2;
  final String? variable3;
  final String? variable4;
  final String? variable5;
  InitialPaymentModel({
    required this.merchantCode,
    required this.amount,
    required this.paymentType,
    required this.responseUrl,
    required this.failureUrl,
    required this.name,
    required this.mobileNumber,
    required this.email,
    required this.orderReferenceNumber,
    required this.version,
    this.variable1,
    this.variable2,
    this.variable3,
    this.variable4,
    this.variable5,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'merchantCode': merchantCode,
      'amount': amount,
      'paymentType': paymentType,
      'responseUrl': responseUrl,
      'failureUrl': failureUrl,
      'Name': name,
      'Mobile': mobileNumber,
      'email': email,
      "version": version,
      "orderReferenceNumber": orderReferenceNumber,
      "variable1": variable1,
      "variable2": variable2,
      "variable3": variable3,
      "variable4": variable4,
      "variable5": variable5,
    };
  }

  factory InitialPaymentModel.fromMap(Map<String, dynamic> map) {
    print(map['Name']);
    return InitialPaymentModel(
      merchantCode: map['merchantCode'] as String,
      amount: map['amount'],
      paymentType: map['paymentType'] as String,
      responseUrl: map['responseUrl'] as String,
      failureUrl: map['failureUrl'] as String,
      name: map['Name'],
      mobileNumber: map['mobile_number'] as String?,
      email: map['email'] as String,
      orderReferenceNumber: map['orderReferenceNumber'],
      version: map['version'] ?? '2.0',
      variable1: map['variable1'] as String?,
      variable2: map['variable2'] as String?,
      variable3: map['variable3'] as String?,
      variable4: map['variable4'] as String?,
      variable5: map['variable5'] as String?,
    );
  }

  @override
  bool operator ==(covariant InitialPaymentModel other) {
    if (identical(this, other)) return true;

    return other.merchantCode == merchantCode &&
        other.amount == amount &&
        other.paymentType == paymentType &&
        other.responseUrl == responseUrl &&
        other.failureUrl == failureUrl &&
        other.name == name &&
        other.mobileNumber == mobileNumber &&
        other.email == email;
  }

  @override
  int get hashCode {
    return merchantCode.hashCode ^
        amount.hashCode ^
        paymentType.hashCode ^
        responseUrl.hashCode ^
        failureUrl.hashCode ^
        name.hashCode ^
        mobileNumber.hashCode ^
        email.hashCode;
  }
}
