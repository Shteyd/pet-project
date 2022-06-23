import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_app/core/failure.dart';
import 'package:rick_and_morty_app/domain/entities/character.dart';
import 'package:rick_and_morty_app/domain/repositories/character_repository.dart';

class GetCharacters {
  GetCharacters(this._repository);

  final CharacterRepository _repository;

  Future<Either<Failure, List<Character>>> execute(int pageId) {
    return _repository.getCharacters(pageId);
  }
}
