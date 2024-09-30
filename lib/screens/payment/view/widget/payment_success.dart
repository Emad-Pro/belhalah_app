import 'package:flutter/material.dart';
import 'package:loveria/common/services/utils.dart';
import 'package:loveria/screens/home.dart';
import 'package:loveria/screens/payment/data/model/payment_response_model/payment_response_model.dart';
import '../../../../common/services/auth.dart' as auth;
import '../../presenter/payment_provider.dart';

class PaymentDetailsPage extends StatelessWidget {
  final PaymentResponseModel paymentResponseModel;
  final PaymentState state;
  PaymentDetailsPage(
      {Key? key, required this.paymentResponseModel, required this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.lwTranslate.paymentDetails),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    _buildStatusPaymentIcon(context, state),
                    Text(
                      paymentResponseModel.resultCode!,
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )),
              _buildPaymentCard(
                  context, context.lwTranslate.transactionInformation),
              SizedBox(height: 20),
              _buildCustomerCard(
                  context, context.lwTranslate.customerInformation),
              SizedBox(height: 20),
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
                      child: Center(child: Text(context.lwTranslate.goHome)),
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
        return Icon(
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
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildListTile(
                        context,
                        icon: Icons.receipt,
                        title: context.lwTranslate.orderReference,
                        subtitle:
                            paymentResponseModel.orderReferenceNumber ?? 'N/A',
                      ),
                      Divider(height: 1),
                      _buildListTile(
                        context,
                        icon: Icons.code,
                        title: context.lwTranslate.resultCode,
                        subtitle: paymentResponseModel.resultCode ?? 'N/A',
                      ),
                      Divider(height: 1),
                      _buildListTile(
                        context,
                        icon: Icons.attach_money,
                        title: context.lwTranslate.amount,
                        subtitle: '${paymentResponseModel.amount! ?? 'N/A'}',
                      ),
                      Divider(height: 1),
                      _buildListTile(
                        context,
                        icon: Icons.update,
                        title: context.lwTranslate.paidOn,
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
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildListTile(
                        context,
                        icon: Icons.person,
                        title: context.lwTranslate.customerName,
                        subtitle: paymentResponseModel.customer!.name == " "
                            ? auth.getAuthInfo('full_name')
                            : paymentResponseModel.customer!.name,
                      ),
                      Divider(height: 1),
                      _buildListTile(
                        context,
                        icon: Icons.email,
                        title: context.lwTranslate.email,
                        subtitle: paymentResponseModel.customer?.email ?? 'N/A',
                      ),
                      if (paymentResponseModel.customer?.mobile != null)
                        Divider(height: 1),
                      if (paymentResponseModel.customer?.mobile != null)
                        _buildListTile(
                          context,
                          icon: Icons.phone,
                          title: context.lwTranslate.mobile,
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
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: TextStyle(fontSize: 14)),
    );
  }
}
