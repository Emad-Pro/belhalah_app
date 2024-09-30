import 'package:flutter/material.dart';
import 'package:loveria/common/services/utils.dart';
import 'package:loveria/screens/home.dart';
import 'package:loveria/screens/payment/data/model/payment_response_model/payment_response_model.dart';

import 'package:loveria/screens/payment/presenter/payment_provider.dart';

import 'package:loveria/screens/payment/view/widget/payment_loading_widget.dart';
import 'package:loveria/screens/payment/view/widget/payment_success.dart';
import 'package:loveria/screens/premium.dart';

class PaymentResult extends StatelessWidget {
  const PaymentResult(
      {super.key, required this.paymentState, this.paymentResponseModel});
  final PaymentState paymentState;
  final PaymentResponseModel? paymentResponseModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      switch (paymentState) {
        case PaymentState.loading:
          return const PaymentLoading(
            message: "Loading ...",
          );
        case PaymentState.cancel:
          return Center(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.cancel,
                  size: 100,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(context.lwTranslate.paymentCancelledByUser),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                            (Route<dynamic> route) => false);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.sizeOf(context).width / 3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Theme.of(context).colorScheme.primary),
                        child: Center(child: Text(context.lwTranslate.goHome)),
                      )),
                )
              ],
            ),
          ));
        case PaymentState.success:
          return PaymentDetailsPage(
              state: paymentState, paymentResponseModel: paymentResponseModel!);
        case PaymentState.error:
          return PaymentDetailsPage(
              state: paymentState, paymentResponseModel: paymentResponseModel!);
      }
    }));
  }
}
