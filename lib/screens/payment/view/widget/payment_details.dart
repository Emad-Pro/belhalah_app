import 'package:flutter/material.dart';
import 'package:loveria/common/services/utils.dart';
import 'package:provider/provider.dart';

import '../../data/model/hesabe_credentials_model/hesabe_credentials_model.dart';
import '../../data/model/initial_hesabe_model.dart';
import '../../data/model/initial_payment_model.dart';
import '../../data/repo/payment_repo.dart';
import '../../presenter/payment_provider.dart';
import '../../../../common/services/auth.dart' as auth;

class PaymentOrderDetails extends StatefulWidget {
  final HesabeCredentialsModel hesabeCredentials;

  const PaymentOrderDetails({super.key, required this.hesabeCredentials});

  @override
  _PaymentOrderDetailsState createState() => _PaymentOrderDetailsState();
}

class _PaymentOrderDetailsState extends State<PaymentOrderDetails> {
  late InitialPaymentModel initialPaymentModel;
  late InitialHesabeModel initialHesabeModel;

  @override
  void initState() {
    super.initState();

    // تهيئة البيانات المطلوبة
    initialPaymentModel = initializePaymentData(widget.hesabeCredentials);
    initialHesabeModel = InitialHesabeModel(
      accessCode:
          widget.hesabeCredentials.data!.hesabeCredentials!.hESABEACCESSCODE!,
      baseUrl: widget
          .hesabeCredentials.data!.hesabeCredentials!.hESABEPAYMENTAPIURL!,
      ivKey:
          widget.hesabeCredentials.data!.hesabeCredentials!.hESABEMERCHANTIV!,
      secretKey: widget
          .hesabeCredentials.data!.hesabeCredentials!.hESABEMERCHANTSECRETKEY!,
    );

    // بدء عملية الدفع
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentProvider(PaymentRepoHesabe()),
      child: Consumer<PaymentProvider>(
        builder: (context, provider, child) {
          final hesabeCredentials = widget.hesabeCredentials.data!;
          return Scaffold(
            appBar: AppBar(
              title: Text(context.lwTranslate.purchaseCredits),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment Details",
                      style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.primary)),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Card to make the layout look cleaner
                          Card(
                            elevation: 4,
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons.person,
                                        color: Colors.blue),
                                    title: const Text('Firstname',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    subtitle: Text(
                                        auth.getAuthInfo('first_name') ?? '',
                                        style: const TextStyle(fontSize: 16)),
                                  ),
                                  const Divider(
                                    height: 0.1,
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.person_outline,
                                        color: Colors.blue),
                                    title: const Text('Lastname',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    subtitle: Text(
                                        auth.getAuthInfo('last_name') ?? '',
                                        style: const TextStyle(fontSize: 16)),
                                  ),
                                  const Divider(
                                    height: 0.1,
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.email,
                                        color: Colors.blue),
                                    title: const Text('Email',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    subtitle: Text(
                                        auth.getAuthInfo('email') ?? '',
                                        style: const TextStyle(fontSize: 16)),
                                  ),
                                  const Divider(
                                    height: 0.1,
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.receipt,
                                        color: Colors.green),
                                    title: const Text('Order ID',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    subtitle: Text(
                                        hesabeCredentials.orderUid ?? '',
                                        style: const TextStyle(fontSize: 16)),
                                  ),
                                  const Divider(
                                    height: 0.1,
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.attach_money,
                                        color: Colors.green),
                                    title: const Text('Price',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    subtitle: Text(
                                        '${hesabeCredentials.amount ?? 0} ${hesabeCredentials.currencyCode ?? ''}',
                                        style: const TextStyle(fontSize: 16)),
                                  ),
                                  const Divider(
                                    height: 0.1,
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.update,
                                        color: Colors.orange),
                                    title: const Text('Version',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    subtitle: Text(
                                        hesabeCredentials.version ?? '',
                                        style: const TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                  context.watch<PaymentProvider>().paymentProcess
                      ? const Center(child: CircularProgressIndicator())
                      : Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                              child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<PaymentProvider>()
                                      .initiatePayment(
                                          context,
                                          initialPaymentModel,
                                          initialHesabeModel);
                                },
                                child: const Text("Check Out")),
                          )),
                        )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

InitialPaymentModel initializePaymentData(
    HesabeCredentialsModel hesabeCredentials) {
  return InitialPaymentModel.fromMap({
    "merchantCode":
        hesabeCredentials.data!.hesabeCredentials!.hESABEMERCHANTCODE!,
    "amount": hesabeCredentials.data!.amount!.toStringAsFixed(3),
    "paymentType": hesabeCredentials.data!.paymentType,
    "responseUrl":
        "${hesabeCredentials.data!.hesabeCredentials!.hESABEPAYMENTAPIURL}/id=${hesabeCredentials.data!.hesabeCredentials!.hESABEMERCHANTCODE}",
    "failureUrl":
        "${hesabeCredentials.data!.hesabeCredentials!.hESABEPAYMENTAPIURL}/id=${hesabeCredentials.data!.hesabeCredentials!.hESABEMERCHANTCODE}",
    "version": "2.0",
    "orderReferenceNumber": hesabeCredentials.data!.orderUid,
    "variable1": "",
    "variable2": "",
    "variable3": "",
    "variable4": "",
    "variable5": "",
    "Name": auth.getAuthInfo('full_name'),
    "mobile_number": null,
    'email': auth.getAuthInfo('email'),
  });
}
