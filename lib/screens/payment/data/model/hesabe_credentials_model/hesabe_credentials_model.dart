class HesabeCredentialsModel {
  bool? success;
  Data? data;

  HesabeCredentialsModel({this.success, this.data});

  HesabeCredentialsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  HesabeCredentials? hesabeCredentials;
  String? orderUid;
  int? amount;
  String? currencyCode;
  String? paymentType;
  String? version;
  String? webhookUrl;

  Data(
      {this.hesabeCredentials,
      this.orderUid,
      this.amount,
      this.currencyCode,
      this.paymentType,
      this.version,
      this.webhookUrl});

  Data.fromJson(Map<String, dynamic> json) {
    hesabeCredentials = json['hesabe_credentials'] != null
        ? new HesabeCredentials.fromJson(json['hesabe_credentials'])
        : null;
    orderUid = json['order_uid'];
    amount = json['amount'];
    currencyCode = json['currency_code'];
    paymentType = json['payment_type'];
    version = json['version'];
    webhookUrl = json['webhook_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hesabeCredentials != null) {
      data['hesabe_credentials'] = this.hesabeCredentials!.toJson();
    }
    data['order_uid'] = this.orderUid;
    data['amount'] = this.amount;
    data['currency_code'] = this.currencyCode;
    data['payment_type'] = this.paymentType;
    data['version'] = this.version;
    data['webhook_url'] = this.webhookUrl;
    return data;
  }
}

class HesabeCredentials {
  String? hESABEPAYMENTAPIURL;
  String? hESABEACCESSCODE;
  String? hESABEMERCHANTSECRETKEY;
  String? hESABEMERCHANTIV;
  String? hESABEMERCHANTCODE;

  HesabeCredentials(
      {this.hESABEPAYMENTAPIURL,
      this.hESABEACCESSCODE,
      this.hESABEMERCHANTSECRETKEY,
      this.hESABEMERCHANTIV,
      this.hESABEMERCHANTCODE});

  HesabeCredentials.fromJson(Map<String, dynamic> json) {
    hESABEPAYMENTAPIURL = json['HESABE_PAYMENT_API_URL'];
    hESABEACCESSCODE = json['HESABE_ACCESS_CODE'];
    hESABEMERCHANTSECRETKEY = json['HESABE_MERCHANT_SECRET_KEY'];
    hESABEMERCHANTIV = json['HESABE_MERCHANT_IV'];
    hESABEMERCHANTCODE = json['HESABE_MERCHANT_CODE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['HESABE_PAYMENT_API_URL'] = this.hESABEPAYMENTAPIURL;
    data['HESABE_ACCESS_CODE'] = this.hESABEACCESSCODE;
    data['HESABE_MERCHANT_SECRET_KEY'] = this.hESABEMERCHANTSECRETKEY;
    data['HESABE_MERCHANT_IV'] = this.hESABEMERCHANTIV;
    data['HESABE_MERCHANT_CODE'] = this.hESABEMERCHANTCODE;
    return data;
  }
}
