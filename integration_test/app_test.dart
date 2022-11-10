import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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

  setUp(() {
    mockQuoteRepository = MockQuoteRepository();
  });
  Widget createWidgetUnderTest() {
    return QuoteApp(quoteRepository: mockQuoteRepository);
  }

  testWidgets('Title on AppBar', (WidgetTester tester) async {
    when(() => mockQuoteRepository.getSingleQuote())
        .thenAnswer((invocation) async => testQuote);
    await tester.pumpWidget(createWidgetUnderTest());
    expect(find.text('Welcome to LetsQuote!'), findsOneWidget);
  });
}
