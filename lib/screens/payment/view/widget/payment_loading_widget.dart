import 'package:flutter/material.dart';

class PaymentLoading extends StatelessWidget {
  final String? message;
  const PaymentLoading({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 10),
          Text(message ?? "يتم تحميل البيانات..."),
        ],
      ),
    );
  }
}
