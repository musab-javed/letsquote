import 'package:flutter_test/flutter_test.dart';
import 'package:letsquote/quote/cubit/single_quote_cubit.dart';
import 'package:letsquote/quote/models/single_quote.dart';
import 'package:letsquote/quote/quote_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockQuoteRepository extends Mock implements QuoteRepository {}

void main() {
  late MockQuoteRepository mockQuoteRepository;
  late SingleQuoteCubit singleQuoteCubit;

  setUp(() {
    mockQuoteRepository = MockQuoteRepository();
    singleQuoteCubit = SingleQuoteCubit(mockQuoteRepository);
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
}
