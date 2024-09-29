import 'package:flutter/material.dart';

class PaymentErrorWidget extends StatelessWidget {
  final String errorMessage;
  const PaymentErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorMessage,
          style: const TextStyle(color: Colors.red, fontSize: 16)),
    );
  }
}
