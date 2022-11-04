import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:letsquote/quote/models/single_quote.dart';
import 'package:letsquote/quote/quote_repository.dart';

part 'single_quote_state.dart';

class SingleQuoteCubit extends Cubit<SingleQuoteState> {
  SingleQuoteCubit(this._quoteRepository) : super(SingleQuoteState());

  final QuoteRepository _quoteRepository;

  Future<void> fetchQuote() async {
    emit(state.copyWith(status: SingleQuoteStatus.loading));

    try {
      final SingleQuote quote = await _quoteRepository.getSingleQuote();

      emit(state.copyWith(
          status: SingleQuoteStatus.success,
          quote: quote.copyWith(
              id: quote.id, author: quote.author, content: quote.content)));
    } catch (e) {
      if (kDebugMode) print('error in fetchQuote from cubit $e');
      state.copyWith(status: SingleQuoteStatus.failure);
    }
  }
}
