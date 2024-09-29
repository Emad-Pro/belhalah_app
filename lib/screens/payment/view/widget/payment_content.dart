import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../presenter/payment_provider.dart';

import 'payment_details.dart';
import 'payment_error_widget.dart';
import 'payment_loading_widget.dart';

class PaymentContent extends StatelessWidget {
  const PaymentContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      final paymentProvider = context.watch<PaymentProvider>();

      switch (paymentProvider.hesabeDetailsState) {
        case RequestState.loading:
          return const PaymentLoading();
        case RequestState.success:
          return PaymentOrderDetails(
              hesabeCredentials: paymentProvider.hesabeCredentials);
        case RequestState.error:
          return PaymentErrorWidget(
              errorMessage: paymentProvider.paymentErrorMessage);
        default:
          return const SizedBox();
      }
    }));
  }
}
