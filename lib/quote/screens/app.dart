import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letsquote/quote/cubit/quotes_cubit.dart';
import 'package:letsquote/quote/cubit/single_quote_cubit.dart';
import 'package:letsquote/quote/quote_repository.dart';
import 'package:letsquote/quote/screens/all_quotes_screen.dart';
import 'package:letsquote/quote/screens/single_quote_screen.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key, required QuoteRepository quoteRepository})
      : _quoteRepository = quoteRepository;

  final QuoteRepository _quoteRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
        value: _quoteRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (BuildContext context) =>
                    SingleQuoteCubit(_quoteRepository)),
            BlocProvider(
                create: (BuildContext context) => QuotesCubit(_quoteRepository))
          ],
          child: QuoteAppView(),
        ));
  }
}

class QuoteAppView extends StatelessWidget {
  const QuoteAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleQuoteScreen(),
      routes: {'/all': (context) => AllQuotesScreen()},
    );
  }
}
