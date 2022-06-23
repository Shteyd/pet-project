import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_app/core/failure.dart';
import 'package:rick_and_morty_app/domain/entities/location.dart';
import 'package:rick_and_morty_app/domain/repositories/location_repository.dart';

class GetLocation {
  GetLocation(this._repository);

  final LocationRepository _repository;

  Future<Either<Failure, Location>> execute(int id) {
    return _repository.getLocation(id);
  }
}
