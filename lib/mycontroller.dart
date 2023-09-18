import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Mycontroller extends ChangeNotifier {
List l =[];
  get_http()
  async {
    var url = Uri.parse('https://mocki.io/v1/d4867d8b-b5d5-4a48-a4ab-79131b5809b8');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    l=jsonDecode(response.body);
    print(l);
    notifyListeners();
  }


}