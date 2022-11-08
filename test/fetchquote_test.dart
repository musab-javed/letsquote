import 'package:flutter_test/flutter_test.dart';
import 'package:letsquote/quote/cubit/quotes_cubit.dart';
import 'package:letsquote/quote/cubit/single_quote_cubit.dart';
import 'package:letsquote/quote/models/single_quote.dart';
import 'package:letsquote/quote/quote_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockQuoteRepository extends Mock implements QuoteRepository {}

void main() {
  late MockQuoteRepository mockQuoteRepository;
  late SingleQuoteCubit singleQuoteCubit;
  late QuotesCubit quotesCubit;

  setUp(() {
    mockQuoteRepository = MockQuoteRepository();
    singleQuoteCubit = SingleQuoteCubit(mockQuoteRepository);
    quotesCubit = QuotesCubit(mockQuoteRepository);
  });

  group('fetch single quotes', () {
    final SingleQuote testQuote =
        SingleQuote(id: "_id", author: "_author", content: 'content');
    test('initial state is correct', () {
      expect(singleQuoteCubit.state.status.isInitial, true);
    });
    test('single quote api is working fine', () async {
      when(() => mockQuoteRepository.getSingleQuote())
          .thenAnswer((invocation) async => testQuote);
      await singleQuoteCubit.fetchQuote();
      verify(() => mockQuoteRepository.getSingleQuote()).called(1);
    });

    test("""loading is true when quote is being fetched,
            then fetches Single Quote,
            then loading is false now""", () async {
      when(() => mockQuoteRepository.getSingleQuote())
          .thenAnswer((invocation) async => testQuote);

      final futureCall = singleQuoteCubit.fetchQuote();
      expect(singleQuoteCubit.state.status.isLoading, true);
      await futureCall;
      expect(singleQuoteCubit.state.quote, testQuote);
    });
  });
  group('fetch all quotes', () {
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
    test("initial state is correct", () {
      expect(quotesCubit.state.status.isInitial, true);
    });

    test('get all quotes APi is working fine', () async {
      when(() => mockQuoteRepository.getAllQuotes())
          .thenAnswer((_) async => allTestQuotesFromApi);
      await quotesCubit.fetchAllQuote();
      verify(() => mockQuoteRepository.getAllQuotes()).called(1);
    });

    test("""loading is true while api call
            all quotes are fetched,
            loading is false finally""", () async {
      when(() => mockQuoteRepository.getAllQuotes())
          .thenAnswer((invocation) async => allTestQuotesFromApi);
      final futureCall = quotesCubit.fetchAllQuote();
      expect(quotesCubit.state.status.isLoading, true);
      await futureCall;
      expect(quotesCubit.state.quotes, allTestQuotes);
      expect(quotesCubit.state.status.isLoading, false);
    });
  });
}
