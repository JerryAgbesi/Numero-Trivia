import 'package:dartz/dartz.dart';
import 'package:trivia/Core/Error/Failures.dart';
import 'package:trivia/features/Numero_Trivia/Domain/Entities/numero_trivia.dart';

abstract class NumeroTriviaRepository {
  //Returns an error or information on the given number
  Future <Either<Failure,NumeroTrivia>> getConcreteNumberTrivia(int number);
  Future <Either<Failure,NumeroTrivia>> getRandomNumberTrivia();
}
