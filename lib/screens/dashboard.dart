import 'package:bytebank/screens/contacts_list.dart';
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
          Material(
            color: Colors.green,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactsList()));
              },
              child: Container(
                height: 100,
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    Text(
                      'Contatos',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}