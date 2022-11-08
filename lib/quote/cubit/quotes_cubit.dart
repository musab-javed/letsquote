import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:letsquote/quote/models/single_quote.dart';

import '../quote_repository.dart';

part 'quotes_state.dart';

class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit(this._quoteRepository) : super(QuotesState());
  final QuoteRepository _quoteRepository;

  List<SingleQuote> allQuotes = [];

  Future<void> fetchAllQuote() async {
    emit(state.copyWith(status: QuotesStatus.loading));

    try {
      final List quotes = await _quoteRepository.getAllQuotes();
      allQuotes = quotes
          .map((q) => SingleQuote(
              id: q['_id'], author: q['author'], content: q['content']))
          .toList();

      emit(state.copyWith(status: QuotesStatus.success, quotes: allQuotes));
    } catch (e) {
      emit(state.copyWith(status: QuotesStatus.failure));
    }
  }

  bool isMax = false;
  bool isLoading = false;
  Future<void> fetchMore() async {
    if (isMax) return;
    if (isLoading) return;
    isLoading = true;
    try {
      final List quotes = await _quoteRepository.getMore();
      allQuotes.addAll(quotes
          .map((q) => SingleQuote(
              id: q['_id'], author: q['author'], content: q['content']))
          .toList());
      isMax = _quoteRepository.getMax();
      if (isMax) {
        isLoading = false;
        emit(state.copyWith(
            status: QuotesStatus.success, quotes: allQuotes, max: isMax));
      } else {
        isLoading = false;
        emit(state.copyWith(
            status: QuotesStatus.success,
            quotes: allQuotes,
            length: allQuotes.length));
      }
    } catch (e) {
      emit(state.copyWith(status: QuotesStatus.failure));
    }
  }
}
