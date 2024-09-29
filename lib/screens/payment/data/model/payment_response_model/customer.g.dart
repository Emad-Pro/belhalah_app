// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      name: json['Name'] as String?,
      email: json['Email'] as String?,
      mobile: json['Mobile'],
      nameOnCard: json['NameOnCard'] as String?,
      cardNumber: json['CardNumber'],
      cardType: json['CardType'],
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'Name': instance.name,
      'Email': instance.email,
      'Mobile': instance.mobile,
      'NameOnCard': instance.nameOnCard,
      'CardNumber': instance.cardNumber,
      'CardType': instance.cardType,
    };
