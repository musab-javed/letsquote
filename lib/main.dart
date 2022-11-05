import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letsquote/app_observer.dart';
import 'package:letsquote/quote/models/single_quote.dart';
import 'package:letsquote/quote/quote_repository.dart';
import 'package:letsquote/quote/screens/app.dart';
import 'package:letsquote/quote/screens/single_quote_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppObserver();
  runApp(QuoteApp(quoteRepository: QuoteRepository()));
}
