import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:letsquote/quote/custom_exceptions.dart';
import 'package:letsquote/quote/models/single_quote.dart';
import 'package:letsquote/quote/quote_repository.dart';

part 'single_quote_state.dart';

class SingleQuoteCubit extends Cubit<SingleQuoteState> {
  SingleQuoteCubit(this._quoteRepository) : super(SingleQuoteState());

  final QuoteRepository _quoteRepository;

  Future<void> fetchQuote() async {
    emit(state.copyWith(status: SingleQuoteStatus.loading));

    final Either<CustomExceptions, SingleQuote> quote =
        await _quoteRepository.getSingleQuote();
    quote.fold(
        (l) => emit(state.copyWith(status: SingleQuoteStatus.failure)),
        (quote) => emit(state.copyWith(
            status: SingleQuoteStatus.success,
            quote: quote.copyWith(
                id: quote.id, author: quote.author, content: quote.content))));
  }
}
