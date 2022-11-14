import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:letsquote/quote/custom_exceptions.dart';

import 'models/single_quote.dart';

class QuoteRepository {
  static const baseUrl = 'https://api.quotable.io';

  Future<SingleQuote> getSingleQuote() async {
    final res = await http.get(Uri.parse("$baseUrl/random"));
    if (res.statusCode != 200) {
      throw const CustomExceptions.singleQuoteFetchFailed(
          'Single quote fetch failed');
    }
    final quote = jsonDecode(res.body) as Map<String, dynamic>;
    if (!quote.containsKey('content')) {
      throw const CustomExceptions.quoteNotFoundFailure('Quote not found');
    }
    return SingleQuote.fromJson(quote);
  }

  bool isMax = false;
  int page = 1;
  Future<List> getAllQuotes() async {
    page = 1;
    final res = await http.get(Uri.parse("$baseUrl/quotes?limit=20"));
    if (res.statusCode != 200) {
      throw const CustomExceptions.allQuotesFetchFailed(
          'Failed to fetch all quotes');
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
      throw const CustomExceptions.getMoreFailed('Failed to fetch more quotes');
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
