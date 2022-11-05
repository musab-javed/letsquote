import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letsquote/quote/cubit/single_quote_cubit.dart';
import 'package:letsquote/quote/quote_repository.dart';
import 'package:letsquote/quote/widgets/single_quote_loading.dart';

class SingleQuoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingleQuoteCubit(context.read<QuoteRepository>()),
      child: const SingleQuoteView(),
    );
  }
}

class SingleQuoteView extends StatefulWidget {
  const SingleQuoteView({super.key});

  @override
  State<SingleQuoteView> createState() => _SingleQuoteViewState();
}

class _SingleQuoteViewState extends State<SingleQuoteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to LetsQuote!'),
      ),
      body: BlocConsumer<SingleQuoteCubit, SingleQuoteState>(
        listener: (context, state) {
          if (state.status.isInitial) {
            context.read<SingleQuoteCubit>().fetchQuote();
          }
        },
        builder: (context, state) {
          return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: RefreshIndicator(
              onRefresh: () => context.read<SingleQuoteCubit>().fetchQuote(),
              child: ListView(shrinkWrap: true, children: [
                SizedBox(
                  height: 100,
                ),
                state.status.isLoading
                    ? SingleQuoteLoading()
                    : Container(
                        width: 500,
                        height: 200,
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 18.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '"${state.quote.content}"',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                '-${state.quote.author}',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      )
              ]),
            ),
          );
        },
      ),
    );
  }
}
