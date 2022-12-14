import '../../models/transaction.dart';
import '../webClient.dart';
import 'dart:convert';
import 'package:http/http.dart';

class TransactionsWebclient {
  Future<List<Transaction>> findAll() async {
    final Response response =
    await client.get(Uri.parse(baseUrl)).timeout(const Duration(seconds: 5));
    final List<dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson.map((dynamic json) => Transaction.fromJson(json)).toList();
  }

  Future<Transaction> save(Transaction transaction) async {
    final String transactionJson = jsonEncode(transaction.toJson());

    final Response response =  await client.post(Uri.parse(baseUrl), headers: {
      'Content-type': 'application/json',
      'password': '1000',
    }, body: transactionJson);
    return Transaction.fromJson(jsonDecode(response.body));
  }

}