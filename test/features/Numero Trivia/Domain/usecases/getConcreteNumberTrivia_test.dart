import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:trivia/features/Numero_Trivia/Domain/Entities/numero_trivia.dart';
import 'package:trivia/features/Numero_Trivia/Domain/Repositories/numero_trivia_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trivia/features/Numero_Trivia/Domain/Use_cases/get_concrete_number_triva.dart';

class MockNumberTriviaRepository extends Mock
    implements NumeroTriviaRepository {}

void main() {
  GetConcreteNumberTrivia? useCase;
  MockNumberTriviaRepository? mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    useCase = GetConcreteNumberTrivia(mockNumberTriviaRepository!);
  });

  final tNumber = 1;
  final tNumberTrivia = NumeroTrivia(text: 'Test', number: 1);

  test('should get trivia for the given number from the repository', () async {
    when(mockNumberTriviaRepository?.getConcreteNumberTrivia(1))
        .thenAnswer((_) async => Right(tNumberTrivia));

    final result = await useCase?.execute(number: tNumber);

    expect(result, Right(tNumberTrivia) );
    verify(mockNumberTriviaRepository?.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
