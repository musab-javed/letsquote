part of 'single_quote_cubit.dart';

enum SingleQuoteStatus { initial, loading, success, failure }

class SingleQuoteState extends Equatable {
  SingleQuoteState(
      {this.status = SingleQuoteStatus.initial, SingleQuote? quote})
      : quote = quote ?? SingleQuote.empty;

  final SingleQuoteStatus status;
  final SingleQuote quote;

  SingleQuoteState copyWith({SingleQuoteStatus? status, SingleQuote? quote}) {
    return SingleQuoteState(
        quote: quote ?? this.quote, status: status ?? this.status);
  }

  @override
  List<Object> get props => [quote, status];
}
