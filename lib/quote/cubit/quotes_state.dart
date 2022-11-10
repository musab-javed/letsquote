part of 'quotes_cubit.dart';

enum QuotesStatus { initial, loading, success, failure }

extension QuotesStatusX on QuotesStatus {
  bool get isInitial => this == QuotesStatus.initial;
  bool get isLoading => this == QuotesStatus.loading;
  bool get isSuccess => this == QuotesStatus.success;
  bool get isFailure => this == QuotesStatus.failure;
}

// ignore: must_be_immutable
class QuotesState extends Equatable {
  QuotesState(
      {this.status = QuotesStatus.initial,
      this.length = 0,
      this.hasReachedMax = false,
      this.isLoading = false,
      List<SingleQuote>? quotes})
      : quotes = quotes ?? [];

  final QuotesStatus status;
  final List<SingleQuote> quotes;
  bool hasReachedMax;
  bool isLoading;
  int length;

  QuotesState copyWith(
      {QuotesStatus? status,
      List<SingleQuote>? quotes,
      max = false,
      length = 0}) {
    return QuotesState(
        quotes: quotes ?? this.quotes,
        status: status ?? this.status,
        isLoading: isLoading,
        length: length,
        hasReachedMax: max);
  }

  @override
  List<Object> get props => [status, quotes, hasReachedMax, isLoading, length];
}
