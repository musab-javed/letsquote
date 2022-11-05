import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'quotes_state.dart';

class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit() : super(QuotesInitial());
}
