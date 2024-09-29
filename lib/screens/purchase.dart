import 'package:flutter/material.dart';
import '../common/services/data_transport.dart' as data_transport;
import '../common/services/utils.dart';
import '../common/widgets/common.dart';
import 'payment/view/payment_screen.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({super.key});

  @override
  State<PurchasePage> createState() => PurchasePageState();
}

class PurchasePageState extends State<PurchasePage> {
  List creditPackages = [];
  bool isLoaded = false;
  bool isCountUpdating = false;

  @override
  void initState() {
    getCreditWalletData();
    super.initState();
  }

  getCreditWalletData() async {
    setState(() {
      isCountUpdating = true;
    });
    return data_transport.get(
      'credit-wallet/credit-wallet-data',
      context: context,
      onSuccess: (responseData) {
        setState(() {
          creditPackages = getItemValue(
              responseData, 'data.creditWalletData.creditPackages');
          isLoaded = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> stack = <Widget>[
      ListView(
        children: <Widget>[
          _buildProductList(),
        ],
      ),
    ];
    return Scaffold(
      appBar: mainAppBarWidget(
          context: context,
          title: context.lwTranslate.purchaseCredits,
          actionWidgets: []),
      body: Stack(
        children: stack,
      ),
    );
  }

  Card _buildProductList() {
    if (!isLoaded) {
      return Card(
        child: ListTile(
          leading: const CircularProgressIndicator(),
          title: Text(context.lwTranslate.fetchingProducts),
        ),
      );
    }

    if (creditPackages.isEmpty) {
      return Card(
        child: ListTile(
          title: Text(context.lwTranslate.noResultFound),
        ),
      );
    }

    ListTile productHeader = ListTile(
      title: Text(
        textAlign: TextAlign.center,
        context.lwTranslate.creditPackages,
        style: const TextStyle(
          fontSize: 22,
        ),
      ),
    );

    final List<ListTile> productList = creditPackages.map(
      (creditPackage) {
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25), // Image border
            child: AppCachedNetworkImage(
              height: 40,
              width: 40,
              imageUrl: getItemValue(creditPackage, 'packageImageUrl'),
            ),
          ),
          title: Text(
              getItemValue(creditPackage, 'package_name', fallbackValue: '')),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.lwTranslate.creditsCredits(
                    getItemValue(creditPackage, 'credit', fallbackValue: '')),
              ),
              // Text(getItemValue(creditPackage, 'description',
              //     fallbackValue: '')),
            ],
          ),
          trailing: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              navigatePage(
                  context,
                  PaymentScreen(
                    packageId: getItemValue(
                      creditPackage,
                      '_id',
                    ).toString(),
                  ));
            },
            child: Text(
                "${getItemValue(creditPackage, 'price', fallbackValue: '').toString()} ${"K.D"}"),
          ),
        );
      },
    ).toList();

    return Card(
      child: Column(
        children: <Widget>[
              productHeader,
              const Divider(),
            ] +
            productList,
      ),
    );
  }
}
