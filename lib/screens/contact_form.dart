import 'package:bytebank/database/app_database.dart';
import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:bytebank/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController = TextEditingController();
  final ContactDao _dao = ContactDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text ('Formulario'),
          centerTitle: true,
        ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nome completo',
              ),
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            TextField(
              controller: _accountNumberController,
              decoration: InputDecoration(
                labelText: 'Número da conta',
              ),
              style: TextStyle(
                fontSize: 16.0,
              ),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,24, 0, 16),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(onPressed: () {
                      final String? name = _nameController.text;
                      final int? accountNumber = int.tryParse(_accountNumberController.text);
                      final Contact newContact = Contact(0, name!, accountNumber!);
                      _dao.save(newContact).then((id) => Navigator.pop(context));
                }, child: Text('Confirmar')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
