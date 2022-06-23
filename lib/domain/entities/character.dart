import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_app/domain/entities/location.dart';

class Character extends Equatable {
  const Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
  });

  final String id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Location origin;

  @override
  List<Object?> get props => [
        id,
        name,
        status,
        species,
        type,
        gender,
        origin,
      ];
}
