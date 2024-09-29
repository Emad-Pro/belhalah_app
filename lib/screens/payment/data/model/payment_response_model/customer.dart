import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Email')
  String? email;
  @JsonKey(name: 'Mobile')
  dynamic mobile;
  @JsonKey(name: 'NameOnCard')
  String? nameOnCard;
  @JsonKey(name: 'CardNumber')
  dynamic cardNumber;
  @JsonKey(name: 'CardType')
  dynamic cardType;

  Customer({
    this.name,
    this.email,
    this.mobile,
    this.nameOnCard,
    this.cardNumber,
    this.cardType,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return _$CustomerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
