import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letsquote/quote/cubit/quotes_cubit.dart';
import 'package:letsquote/quote/models/single_quote.dart';
import 'package:letsquote/quote/quote_repository.dart';
import 'package:letsquote/quote/widgets/quote_loading.dart';
import 'package:letsquote/quote/widgets/quotes_loading.dart';

class AllQuotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          QuotesCubit(context.read<QuoteRepository>())..fetchAllQuote(),
      child: const AllQuotesView(),
    );
  }
}

class AllQuotesView extends StatefulWidget {
  const AllQuotesView({super.key});

  @override
  State<AllQuotesView> createState() => _AllQuotesViewState();
}

class _AllQuotesViewState extends State<AllQuotesView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<QuotesCubit>().fetchMore();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Quotes'),
      ),
      body: BlocConsumer<QuotesCubit, QuotesState>(
        listener: (context, state) {
          if (state.status.isInitial) {
            context.read<QuotesCubit>().fetchAllQuote();
          }
        },
        builder: (context, state) {
          return SizedBox(
            width: double.infinity,
            child: Column(children: [
              state.status.isLoading || state.status.isInitial
                  ? Expanded(
                      child: RefreshIndicator(
                          onRefresh: () {
                            return context.read<QuotesCubit>().fetchAllQuote();
                          },
                          child: const AllQuotesLoading()),
                    )
                  : Expanded(
                      child: RefreshIndicator(
                      onRefresh: () =>
                          context.read<QuotesCubit>().fetchAllQuote(),
                      child: ListView.separated(
                          controller: _scrollController,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 8.0,
                              ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5.0),
                          itemCount: state.hasReachedMax
                              ? state.quotes.length
                              : state.quotes.length + 1,
                          itemBuilder: (BuildContext context, int index) {
                            if (index > state.quotes.length - 1) {
                              return const QuoteLoading();
                            }
                            final SingleQuote q = state.quotes[index];
                            return Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(color: Colors.black)),
                              height: 100,
                              width: double.infinity,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(q.content),
                                    const SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        q.author,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ]),
                            );
                          }),
                    ))
            ]),
          );
        },
      ),
    );
  }
}
