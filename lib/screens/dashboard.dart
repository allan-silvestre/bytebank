import 'package:bytebank/screens/contacts_list.dart';
import 'package:bytebank/screens/transactions_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/bytebank_logo.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _FeatureIten(
                'Transfer',
                Icons.monetization_on,
                onClick: () => _showContactsList(context),
              ),
              _FeatureIten('Trasaction \n Feed', Icons.description,
                  onClick: () => _showTrasactionsList(context),
                  ),
            ],
          ),
        ],
      ),
    );
  }

  void _showContactsList(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ContactsList(),
    ));
  }

  void _showTrasactionsList(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TransactionsList(),
    ));
  }
}

class _FeatureIten extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;

  _FeatureIten(this.name, this.icon, {required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: InkWell(
        onTap: () => onClick(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
