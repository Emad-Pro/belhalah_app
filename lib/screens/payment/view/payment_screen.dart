import 'package:flutter/material.dart';

import 'package:loveria/screens/payment/data/repo/payment_repo.dart';
import 'package:provider/provider.dart';

import '../presenter/payment_provider.dart';
import 'widget/payment_content.dart';

class PaymentScreen extends StatelessWidget {
  final String packageId;
  const PaymentScreen({super.key, required this.packageId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) =>
            PaymentProvider(PaymentRepoHesabe())..fetchHesabeDetails(packageId),
        child: const PaymentContent(),
      ),
    );
  }
}
