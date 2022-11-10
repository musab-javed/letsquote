import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:letsquote/quote/cubit/quotes_cubit.dart';
import 'package:letsquote/quote/models/single_quote.dart';
import 'package:letsquote/quote/quote_repository.dart';
import 'package:letsquote/quote/screens/all_quotes_screen.dart';
import 'package:letsquote/quote/screens/app.dart';
import 'package:letsquote/quote/screens/single_quote_screen.dart';
import 'package:mocktail/mocktail.dart';

class MockQuoteRepository extends Mock implements QuoteRepository {}

void main() {
  late MockQuoteRepository mockQuoteRepository;
  final SingleQuote testQuote =
      SingleQuote(id: "_id", author: "_author", content: 'content');
  late QuotesCubit quotesCubit;

  setUp(() {
    mockQuoteRepository = MockQuoteRepository();
    quotesCubit = QuotesCubit(mockQuoteRepository);
  });
  Widget createWidgetUnderTest() {
    return QuoteApp(quoteRepository: mockQuoteRepository);
  }

  testWidgets('Title on AppBar', (WidgetTester tester) async {
    when(() => mockQuoteRepository.getSingleQuote())
        .thenAnswer((invocation) async => testQuote);
    await tester.pumpWidget(createWidgetUnderTest());
   expect(find.byType(SingleQuoteScreen), findsOneWidget);

    expect(find.text('Welcome to LetsQuote!'), findsOneWidget);
  });

  final List<Map<String, String>> allTestQuotesFromApi = [
    {
      "_id": "JIk3cbQ8s",
      "author": "Michael Jordan",
      "content":
          "I've missed more than 9000 shots in my career. And that is why I succeed.",
    },
    {
      "_id": "JIk3cbQ8s",
      "author": "Michael Jordan",
      "content":
          "I've missed more than 9000 shots in my career. And that is why I succeed.",
    },
    {
      "_id": "JIk3cbQ8s",
      "author": "Michael Jordan",
      "content":
          "I've missed more than 9000 shots in my career. And that is why I succeed.",
    }
  ];
  final List<SingleQuote> allTestQuotes = [
    SingleQuote(
        id: 'JIk3cbQ8s',
        author: "Michael Jordan",
        content:
            "I've missed more than 9000 shots in my career. And that is why I succeed."),
    SingleQuote(
        id: 'JIk3cbQ8s',
        author: "Michael Jordan",
        content:
            "I've missed more than 9000 shots in my career. And that is why I succeed."),
    SingleQuote(
        id: 'JIk3cbQ8s',
        author: "Michael Jordan",
        content:
            "I've missed more than 9000 shots in my career. And that is why I succeed.")
  ];

  testWidgets('Tap on explore all quotes navigates to all quotes screen',
      (WidgetTester tester) async {
    when(() => mockQuoteRepository.getSingleQuote())
        .thenAnswer((invocation) async => testQuote);
    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pump();
    await tester.tap(find.text('Explore all quotes'));
    await tester.pump(Duration(seconds: 1));
    // await tester.pumpAndSettle(Duration(seconds: 1), );
    expect(find.byType(SingleQuoteScreen), findsNothing);
    expect(find.byType(AllQuotesScreen), findsOneWidget);
    expect(
        find.text('All Quotes'), findsOneWidget); //the title of AllQuotesScreen
  });
}
