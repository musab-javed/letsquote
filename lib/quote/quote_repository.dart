import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/single_quote.dart';

class SingleQuoteFetchFailed implements Exception {}

class QuoteNotFoundFailure implements Exception {}

class AllQuotesFetchFailed implements Exception {}

class GetMoreFailed implements Exception {}

class QuoteRepository {
  static const baseUrl = 'https://api.quotable.io';

  Future<SingleQuote> getSingleQuote() async {
    final res = await http.get(Uri.parse("$baseUrl/random"));
    if (res.statusCode != 200) {
      throw SingleQuoteFetchFailed();
    }
    final quote = jsonDecode(res.body) as Map<String, dynamic>;
    if (!quote.containsKey('content')) {
      throw QuoteNotFoundFailure();
    }
    return SingleQuote.fromJson(quote);
  }

  bool isMax = false;
  int page = 1;
  Future<List> getAllQuotes() async {
    page = 1;
    final res = await http.get(Uri.parse("$baseUrl/quotes?limit=6"));
    if (res.statusCode != 200) {
      throw AllQuotesFetchFailed();
    }
    final quotes = jsonDecode(res.body)['results'] as List;
    if (jsonDecode(res.body)['lastItemIndex'] == null) {
      isMax = true;
    }
    return quotes;
  }

  bool isLoadingMore = true;
  Future<List> getMore() async {
    final res =
        await http.get(Uri.parse("$baseUrl/quotes?limit=3&page=${++page}"));
    if (res.statusCode != 200) {
      throw GetMoreFailed();
    }
    final quotes = jsonDecode(res.body)['results'] as List;
    if (jsonDecode(res.body)['lastItemIndex'] == null) {
      isMax = true;
    }
    return quotes;
  }

  bool getMax() {
    return isMax;
  }
}
