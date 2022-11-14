import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:letsquote/quote/custom_exceptions.dart';

import 'models/single_quote.dart';

class QuoteRepository {
  static const baseUrl = 'https://api.quotable.io';

  Future<Either<CustomExceptions, SingleQuote>> getSingleQuote() async {
    final res = await http.get(Uri.parse("$baseUrl/random"));
    if (res.statusCode != 200) {
      return left(const CustomExceptions.singleQuoteFetchFailed(
          'Failed to fetch single quote'));
    }
    final quote = jsonDecode(res.body) as Map<String, dynamic>;
    if (!quote.containsKey('content')) {
      return left(
          const CustomExceptions.quoteNotFoundFailure('Quote not found'));
    }
    return right(SingleQuote.fromJson(quote));
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
