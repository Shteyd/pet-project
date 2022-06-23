import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_app/core/failure.dart';
import 'package:rick_and_morty_app/domain/entities/character.dart';
import 'package:rick_and_morty_app/domain/repositories/character_repository.dart';

class GetCharacter {
  GetCharacter(this._repository);

  final CharacterRepository _repository;

  Future<Either<Failure, Character>> execute(int id) {
    return _repository.getCharacter(id);
  }
}
