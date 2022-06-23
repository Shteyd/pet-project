import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_app/core/failure.dart';
import 'package:rick_and_morty_app/domain/entities/character.dart';

abstract class CharacterRepository {
  Future<Either<Failure, List<Character>>> getCharacters(int pageId);
  Future<Either<Failure, Character>> getCharacter(int id);
}
