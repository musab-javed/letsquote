import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part "custom_exceptions.freezed.dart";

@freezed
class CustomExceptions with _$CustomExceptions {
  @Implements<Exception>()
  const factory CustomExceptions.singleQuoteFetchFailed(String message  ) = SingleQuoteFetchFailed;
  const factory CustomExceptions.quoteNotFoundFailure(String message  ) = QuoteNotFoundFailure;
  const factory CustomExceptions.allQuotesFetchFailed(String message  ) = AllQuotesFetchFailed;
  const factory CustomExceptions.getMoreFailed(String message  ) = GetMoreFailed;
}
