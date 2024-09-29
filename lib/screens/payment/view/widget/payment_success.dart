import 'package:flutter/material.dart';
import 'package:loveria/screens/home.dart';
import 'package:loveria/screens/payment/data/model/payment_response_model/payment_response_model.dart';
import '../../../../common/services/auth.dart' as auth;
import '../../presenter/payment_provider.dart';

class PaymentDetailsPage extends StatelessWidget {
  final PaymentResponseModel paymentResponseModel;
  final PaymentState state;
  const PaymentDetailsPage(
      {Key? key, required this.paymentResponseModel, required this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    _buildStatusPaymentIcon(context, state),
                    Text(
                      paymentResponseModel.resultCode!,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )),
              _buildPaymentCard(context, "Transaction Information"),
              const SizedBox(height: 20),
              _buildCustomerCard(context, "Customer Information"),
              const SizedBox(height: 20),
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
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Theme.of(context).colorScheme.primary),
                      child: Center(child: Text("Go Home")),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusPaymentIcon(BuildContext context, PaymentState state) {
    switch (state) {
      case PaymentState.loading:
      case PaymentState.cancel:
        return const Icon(
          Icons.cancel,
          size: 100,
          color: Colors.amber,
        );
      case PaymentState.success:
        return Icon(
          Icons.done_rounded,
          size: 100,
          color: Colors.green,
        );
      case PaymentState.error:
        return Icon(
          Icons.error_outline_outlined,
          size: 100,
          color: Colors.red,
        );
    }
  }

  // Section Title Widget

  // Payment Card Widget
  Widget _buildPaymentCard(BuildContext context, String title) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ExpansionTile(
            collapsedIconColor: Theme.of(context).colorScheme.primary,
            title: Text(
              title,
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildListTile(
                        context,
                        icon: Icons.receipt,
                        title: 'Order Reference',
                        subtitle:
                            paymentResponseModel.orderReferenceNumber ?? 'N/A',
                      ),
                      const Divider(height: 1),
                      _buildListTile(
                        context,
                        icon: Icons.code,
                        title: 'Result Code',
                        subtitle: paymentResponseModel.resultCode ?? 'N/A',
                      ),
                      const Divider(height: 1),
                      _buildListTile(
                        context,
                        icon: Icons.attach_money,
                        title: 'Amount',
                        subtitle: '${paymentResponseModel.amount! ?? 'N/A'}',
                      ),
                      const Divider(height: 1),
                      _buildListTile(
                        context,
                        icon: Icons.update,
                        title: 'Paid On',
                        subtitle: paymentResponseModel.paidOn ?? 'N/A',
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  // Customer Card Widget
  Widget _buildCustomerCard(BuildContext context, String title) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ExpansionTile(
            collapsedIconColor: Theme.of(context).colorScheme.primary,
            title: Text(
              title,
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildListTile(
                        context,
                        icon: Icons.person,
                        title: 'Customer Name',
                        subtitle: paymentResponseModel.customer!.name == " "
                            ? auth.getAuthInfo('full_name')
                            : paymentResponseModel.customer!.name,
                      ),
                      const Divider(height: 1),
                      _buildListTile(
                        context,
                        icon: Icons.email,
                        title: 'Email',
                        subtitle: paymentResponseModel.customer?.email ?? 'N/A',
                      ),
                      if (paymentResponseModel.customer?.mobile != null)
                        const Divider(height: 1),
                      if (paymentResponseModel.customer?.mobile != null)
                        _buildListTile(
                          context,
                          icon: Icons.phone,
                          title: 'Mobile',
                          subtitle:
                              paymentResponseModel.customer?.mobile ?? 'N/A',
                        ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  // Additional Information Card Widget

  // Common ListTile Widget
  Widget _buildListTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 14)),
    );
  }
}
