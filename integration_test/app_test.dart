// ignore: unused_import
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:letsquote/quote/quote_repository.dart';
import 'package:letsquote/quote/screens/all_quotes_screen.dart';
import 'package:letsquote/quote/screens/app.dart';
import 'package:letsquote/quote/screens/single_quote_screen.dart';
import 'package:letsquote/quote/widgets/quote_loading.dart';
import 'package:letsquote/quote/widgets/quotes_loading.dart';
import 'package:letsquote/quote/widgets/single_quote_loading.dart';

void main() {
  late QuoteRepository quoteRepository;
  setUp(() {
    quoteRepository = QuoteRepository();
  });
  Widget createWidgetUnderTest() {
    return QuoteApp(quoteRepository: quoteRepository);
  }

  testWidgets('Title on AppBar', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetUnderTest());
    expect(find.byType(SingleQuoteScreen), findsOneWidget);

    expect(find.text('Welcome to LetsQuote!'), findsOneWidget);
  });

  testWidgets('End-to-End workflow', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pump();
    //making sure the initial state s loading and loading widget is displayed
    expect(find.byType(SingleQuoteLoading), findsOneWidget);
    await tester.pump(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    // now the quote is loaded and loading is not there anymore
    expect(find.byType(SingleQuoteLoading), findsNothing);
    //testing pull to refresh
    // ignore: unused_local_variable
    final SemanticsHandle handle = tester.ensureSemantics();
    await tester.fling(find.byType(ListView), const Offset(0.0, 300.0), 1000.0);
    await tester.pump();
    expect(
        tester.getSemantics(find.byType(RefreshProgressIndicator)),
        matchesSemantics(
          label: 'Refresh',
        ));

    await tester
        .pump(const Duration(seconds: 1)); // finish the scroll animation
    //again loading quote should be shown
    expect(find.byType(SingleQuoteLoading), findsOneWidget);

    await tester.pump(
        const Duration(seconds: 1)); // finish the indicator settle animation
    await tester.pump(const Duration(seconds: 1));
    // expect(find.byType(SingleQuoteLoading), findsOneWidget);

    await tester.pump(const Duration(seconds: 1)); //finish ind hide animation

    expect(find.byType(SingleQuoteLoading), findsNothing);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Explore all quotes'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    // navigation is successful
    expect(find.byType(SingleQuoteScreen), findsNothing);
    expect(find.byType(AllQuotesScreen), findsOneWidget);
    // all quotes should be loading
    expect(find.byType(AllQuotesLoading), findsOneWidget);
    expect(
        find.text('All Quotes'), findsOneWidget); //the title of AllQuotesScreen

    await tester.pump(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    await tester.fling(find.byType(ListView), const Offset(0.0, 300.0), 1000.0);
    await tester.pump();
    expect(
        tester.getSemantics(find.byType(RefreshProgressIndicator)),
        matchesSemantics(
          label: 'Refresh',
        ));

    await tester
        .pump(const Duration(seconds: 1)); // finish the scroll animation
    // all quotes should be loading
    expect(find.byType(AllQuotesLoading), findsOneWidget);
    await tester
        .pump(const Duration(seconds: 1)); //fininsh indic hide animation
    await tester.pump(const Duration(seconds: 2));
    expect(find.byType(AllQuotesLoading), findsNothing); //quotes loaded
    final listFinder = find.byType(Scrollable);
    final itemToFind = find.byType(QuoteLoading);
    // Scroll until the item to be found appears.
    await tester.scrollUntilVisible(
      itemToFind,
      200.0,
      scrollable: listFinder,
    );
    await tester.pump();
    await tester.pump(const Duration(seconds: 2));
    await tester.pump(const Duration(seconds: 2));
    expect(find.byType(QuoteLoading), findsNothing);
  });
}
