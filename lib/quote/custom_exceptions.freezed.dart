// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'custom_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomExceptions {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) singleQuoteFetchFailed,
    required TResult Function(String message) quoteNotFoundFailure,
    required TResult Function(String message) allQuotesFetchFailed,
    required TResult Function(String message) getMoreFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? singleQuoteFetchFailed,
    TResult? Function(String message)? quoteNotFoundFailure,
    TResult? Function(String message)? allQuotesFetchFailed,
    TResult? Function(String message)? getMoreFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? singleQuoteFetchFailed,
    TResult Function(String message)? quoteNotFoundFailure,
    TResult Function(String message)? allQuotesFetchFailed,
    TResult Function(String message)? getMoreFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleQuoteFetchFailed value)
        singleQuoteFetchFailed,
    required TResult Function(QuoteNotFoundFailure value) quoteNotFoundFailure,
    required TResult Function(AllQuotesFetchFailed value) allQuotesFetchFailed,
    required TResult Function(GetMoreFailed value) getMoreFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult? Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult? Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult? Function(GetMoreFailed value)? getMoreFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult Function(GetMoreFailed value)? getMoreFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomExceptionsCopyWith<CustomExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomExceptionsCopyWith<$Res> {
  factory $CustomExceptionsCopyWith(
          CustomExceptions value, $Res Function(CustomExceptions) then) =
      _$CustomExceptionsCopyWithImpl<$Res, CustomExceptions>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CustomExceptionsCopyWithImpl<$Res, $Val extends CustomExceptions>
    implements $CustomExceptionsCopyWith<$Res> {
  _$CustomExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleQuoteFetchFailedCopyWith<$Res>
    implements $CustomExceptionsCopyWith<$Res> {
  factory _$$SingleQuoteFetchFailedCopyWith(_$SingleQuoteFetchFailed value,
          $Res Function(_$SingleQuoteFetchFailed) then) =
      __$$SingleQuoteFetchFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SingleQuoteFetchFailedCopyWithImpl<$Res>
    extends _$CustomExceptionsCopyWithImpl<$Res, _$SingleQuoteFetchFailed>
    implements _$$SingleQuoteFetchFailedCopyWith<$Res> {
  __$$SingleQuoteFetchFailedCopyWithImpl(_$SingleQuoteFetchFailed _value,
      $Res Function(_$SingleQuoteFetchFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SingleQuoteFetchFailed(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingleQuoteFetchFailed
    with DiagnosticableTreeMixin
    implements SingleQuoteFetchFailed {
  const _$SingleQuoteFetchFailed(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomExceptions.singleQuoteFetchFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CustomExceptions.singleQuoteFetchFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleQuoteFetchFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleQuoteFetchFailedCopyWith<_$SingleQuoteFetchFailed> get copyWith =>
      __$$SingleQuoteFetchFailedCopyWithImpl<_$SingleQuoteFetchFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) singleQuoteFetchFailed,
    required TResult Function(String message) quoteNotFoundFailure,
    required TResult Function(String message) allQuotesFetchFailed,
    required TResult Function(String message) getMoreFailed,
  }) {
    return singleQuoteFetchFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? singleQuoteFetchFailed,
    TResult? Function(String message)? quoteNotFoundFailure,
    TResult? Function(String message)? allQuotesFetchFailed,
    TResult? Function(String message)? getMoreFailed,
  }) {
    return singleQuoteFetchFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? singleQuoteFetchFailed,
    TResult Function(String message)? quoteNotFoundFailure,
    TResult Function(String message)? allQuotesFetchFailed,
    TResult Function(String message)? getMoreFailed,
    required TResult orElse(),
  }) {
    if (singleQuoteFetchFailed != null) {
      return singleQuoteFetchFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleQuoteFetchFailed value)
        singleQuoteFetchFailed,
    required TResult Function(QuoteNotFoundFailure value) quoteNotFoundFailure,
    required TResult Function(AllQuotesFetchFailed value) allQuotesFetchFailed,
    required TResult Function(GetMoreFailed value) getMoreFailed,
  }) {
    return singleQuoteFetchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult? Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult? Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult? Function(GetMoreFailed value)? getMoreFailed,
  }) {
    return singleQuoteFetchFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult Function(GetMoreFailed value)? getMoreFailed,
    required TResult orElse(),
  }) {
    if (singleQuoteFetchFailed != null) {
      return singleQuoteFetchFailed(this);
    }
    return orElse();
  }
}

abstract class SingleQuoteFetchFailed implements CustomExceptions, Exception {
  const factory SingleQuoteFetchFailed(final String message) =
      _$SingleQuoteFetchFailed;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SingleQuoteFetchFailedCopyWith<_$SingleQuoteFetchFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuoteNotFoundFailureCopyWith<$Res>
    implements $CustomExceptionsCopyWith<$Res> {
  factory _$$QuoteNotFoundFailureCopyWith(_$QuoteNotFoundFailure value,
          $Res Function(_$QuoteNotFoundFailure) then) =
      __$$QuoteNotFoundFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$QuoteNotFoundFailureCopyWithImpl<$Res>
    extends _$CustomExceptionsCopyWithImpl<$Res, _$QuoteNotFoundFailure>
    implements _$$QuoteNotFoundFailureCopyWith<$Res> {
  __$$QuoteNotFoundFailureCopyWithImpl(_$QuoteNotFoundFailure _value,
      $Res Function(_$QuoteNotFoundFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$QuoteNotFoundFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuoteNotFoundFailure
    with DiagnosticableTreeMixin
    implements QuoteNotFoundFailure {
  const _$QuoteNotFoundFailure(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomExceptions.quoteNotFoundFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CustomExceptions.quoteNotFoundFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteNotFoundFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteNotFoundFailureCopyWith<_$QuoteNotFoundFailure> get copyWith =>
      __$$QuoteNotFoundFailureCopyWithImpl<_$QuoteNotFoundFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) singleQuoteFetchFailed,
    required TResult Function(String message) quoteNotFoundFailure,
    required TResult Function(String message) allQuotesFetchFailed,
    required TResult Function(String message) getMoreFailed,
  }) {
    return quoteNotFoundFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? singleQuoteFetchFailed,
    TResult? Function(String message)? quoteNotFoundFailure,
    TResult? Function(String message)? allQuotesFetchFailed,
    TResult? Function(String message)? getMoreFailed,
  }) {
    return quoteNotFoundFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? singleQuoteFetchFailed,
    TResult Function(String message)? quoteNotFoundFailure,
    TResult Function(String message)? allQuotesFetchFailed,
    TResult Function(String message)? getMoreFailed,
    required TResult orElse(),
  }) {
    if (quoteNotFoundFailure != null) {
      return quoteNotFoundFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleQuoteFetchFailed value)
        singleQuoteFetchFailed,
    required TResult Function(QuoteNotFoundFailure value) quoteNotFoundFailure,
    required TResult Function(AllQuotesFetchFailed value) allQuotesFetchFailed,
    required TResult Function(GetMoreFailed value) getMoreFailed,
  }) {
    return quoteNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult? Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult? Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult? Function(GetMoreFailed value)? getMoreFailed,
  }) {
    return quoteNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult Function(GetMoreFailed value)? getMoreFailed,
    required TResult orElse(),
  }) {
    if (quoteNotFoundFailure != null) {
      return quoteNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class QuoteNotFoundFailure implements CustomExceptions {
  const factory QuoteNotFoundFailure(final String message) =
      _$QuoteNotFoundFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$QuoteNotFoundFailureCopyWith<_$QuoteNotFoundFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllQuotesFetchFailedCopyWith<$Res>
    implements $CustomExceptionsCopyWith<$Res> {
  factory _$$AllQuotesFetchFailedCopyWith(_$AllQuotesFetchFailed value,
          $Res Function(_$AllQuotesFetchFailed) then) =
      __$$AllQuotesFetchFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AllQuotesFetchFailedCopyWithImpl<$Res>
    extends _$CustomExceptionsCopyWithImpl<$Res, _$AllQuotesFetchFailed>
    implements _$$AllQuotesFetchFailedCopyWith<$Res> {
  __$$AllQuotesFetchFailedCopyWithImpl(_$AllQuotesFetchFailed _value,
      $Res Function(_$AllQuotesFetchFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AllQuotesFetchFailed(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AllQuotesFetchFailed
    with DiagnosticableTreeMixin
    implements AllQuotesFetchFailed {
  const _$AllQuotesFetchFailed(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomExceptions.allQuotesFetchFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CustomExceptions.allQuotesFetchFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllQuotesFetchFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllQuotesFetchFailedCopyWith<_$AllQuotesFetchFailed> get copyWith =>
      __$$AllQuotesFetchFailedCopyWithImpl<_$AllQuotesFetchFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) singleQuoteFetchFailed,
    required TResult Function(String message) quoteNotFoundFailure,
    required TResult Function(String message) allQuotesFetchFailed,
    required TResult Function(String message) getMoreFailed,
  }) {
    return allQuotesFetchFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? singleQuoteFetchFailed,
    TResult? Function(String message)? quoteNotFoundFailure,
    TResult? Function(String message)? allQuotesFetchFailed,
    TResult? Function(String message)? getMoreFailed,
  }) {
    return allQuotesFetchFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? singleQuoteFetchFailed,
    TResult Function(String message)? quoteNotFoundFailure,
    TResult Function(String message)? allQuotesFetchFailed,
    TResult Function(String message)? getMoreFailed,
    required TResult orElse(),
  }) {
    if (allQuotesFetchFailed != null) {
      return allQuotesFetchFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleQuoteFetchFailed value)
        singleQuoteFetchFailed,
    required TResult Function(QuoteNotFoundFailure value) quoteNotFoundFailure,
    required TResult Function(AllQuotesFetchFailed value) allQuotesFetchFailed,
    required TResult Function(GetMoreFailed value) getMoreFailed,
  }) {
    return allQuotesFetchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult? Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult? Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult? Function(GetMoreFailed value)? getMoreFailed,
  }) {
    return allQuotesFetchFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult Function(GetMoreFailed value)? getMoreFailed,
    required TResult orElse(),
  }) {
    if (allQuotesFetchFailed != null) {
      return allQuotesFetchFailed(this);
    }
    return orElse();
  }
}

abstract class AllQuotesFetchFailed implements CustomExceptions {
  const factory AllQuotesFetchFailed(final String message) =
      _$AllQuotesFetchFailed;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AllQuotesFetchFailedCopyWith<_$AllQuotesFetchFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMoreFailedCopyWith<$Res>
    implements $CustomExceptionsCopyWith<$Res> {
  factory _$$GetMoreFailedCopyWith(
          _$GetMoreFailed value, $Res Function(_$GetMoreFailed) then) =
      __$$GetMoreFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetMoreFailedCopyWithImpl<$Res>
    extends _$CustomExceptionsCopyWithImpl<$Res, _$GetMoreFailed>
    implements _$$GetMoreFailedCopyWith<$Res> {
  __$$GetMoreFailedCopyWithImpl(
      _$GetMoreFailed _value, $Res Function(_$GetMoreFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetMoreFailed(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMoreFailed with DiagnosticableTreeMixin implements GetMoreFailed {
  const _$GetMoreFailed(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomExceptions.getMoreFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomExceptions.getMoreFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMoreFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMoreFailedCopyWith<_$GetMoreFailed> get copyWith =>
      __$$GetMoreFailedCopyWithImpl<_$GetMoreFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) singleQuoteFetchFailed,
    required TResult Function(String message) quoteNotFoundFailure,
    required TResult Function(String message) allQuotesFetchFailed,
    required TResult Function(String message) getMoreFailed,
  }) {
    return getMoreFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? singleQuoteFetchFailed,
    TResult? Function(String message)? quoteNotFoundFailure,
    TResult? Function(String message)? allQuotesFetchFailed,
    TResult? Function(String message)? getMoreFailed,
  }) {
    return getMoreFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? singleQuoteFetchFailed,
    TResult Function(String message)? quoteNotFoundFailure,
    TResult Function(String message)? allQuotesFetchFailed,
    TResult Function(String message)? getMoreFailed,
    required TResult orElse(),
  }) {
    if (getMoreFailed != null) {
      return getMoreFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleQuoteFetchFailed value)
        singleQuoteFetchFailed,
    required TResult Function(QuoteNotFoundFailure value) quoteNotFoundFailure,
    required TResult Function(AllQuotesFetchFailed value) allQuotesFetchFailed,
    required TResult Function(GetMoreFailed value) getMoreFailed,
  }) {
    return getMoreFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult? Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult? Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult? Function(GetMoreFailed value)? getMoreFailed,
  }) {
    return getMoreFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleQuoteFetchFailed value)? singleQuoteFetchFailed,
    TResult Function(QuoteNotFoundFailure value)? quoteNotFoundFailure,
    TResult Function(AllQuotesFetchFailed value)? allQuotesFetchFailed,
    TResult Function(GetMoreFailed value)? getMoreFailed,
    required TResult orElse(),
  }) {
    if (getMoreFailed != null) {
      return getMoreFailed(this);
    }
    return orElse();
  }
}

abstract class GetMoreFailed implements CustomExceptions {
  const factory GetMoreFailed(final String message) = _$GetMoreFailed;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$GetMoreFailedCopyWith<_$GetMoreFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
