import 'package:dartz/dartz.dart';
import 'package:flutter_counter_block/domain/entities/character.dart';
abstract class CharacterRepository {
  Future<Either<Exception, List<Character>>> getAllCharacters();
}