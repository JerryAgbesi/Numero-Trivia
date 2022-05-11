import 'package:dartz/dartz.dart';
import 'package:trivia/Core/Error/Failures.dart';
import 'package:trivia/features/Numero_Trivia/Domain/Entities/numero_trivia.dart';
import 'package:trivia/features/Numero_Trivia/Domain/Repositories/numero_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumeroTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumeroTrivia>> execute({required int number}) async{
   return await repository.getConcreteNumberTrivia(number);
  }
}
