import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_app/core/failure.dart';
import 'package:rick_and_morty_app/domain/entities/location.dart';

abstract class LocationRepository {
  Future<Either<Failure, List<Location>>> getLocations(int pageId);
  Future<Either<Failure, Location>> getLocation(int id);
}
