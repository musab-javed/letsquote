import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'models/single_quote.dart';

class SingleQuoteFetchFailed implements Exception {}

class QuoteNotFoundFailure implements Exception {}

class QuoteRepository {
  static final baseUrl = 'https://api.quotable.io';

  Future<SingleQuote> getSingleQuote() async {
    final res = await http.get(Uri.parse("$baseUrl/random"));
    print('hello');
    print(res.body);
    if (res.statusCode != 200) {
      throw SingleQuoteFetchFailed();
    }
    final quote = jsonDecode(res.body) as Map<String, dynamic>;
    if (!quote.containsKey('content')) {
      throw QuoteNotFoundFailure();
    }
    return SingleQuote.fromJson(quote);
  }
}
