import 'package:flutter_counter_block/data/datasources/character_remote_datasource.dart';
import 'package:flutter_counter_block/data/repositories/character_repository_impl.dart';
import 'package:flutter_counter_block/domain/repositories/character_repository.dart';
import 'package:flutter_counter_block/domain/usecases/get_all_characters_usecase.dart';
import 'package:flutter_counter_block/presentation/blocs/characters/characters_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;
Future<void> init() async {
// BloC
  sl.registerFactory(() => CharacterBloc(sl()));
// Casos de uso
  sl.registerLazySingleton(() => GetAllCharacters(sl()));
// Repositorios
  sl.registerLazySingleton<CharacterRepository>(
    () => CharacterRepositoryImpl(sl()),
  );
// Data sources
  sl.registerLazySingleton<CharacterRemoteDataSource>(
    () => CharacterRemoteDataSourceImpl(sl()),
  );
// Cliente HTTP
  sl.registerLazySingleton(() => http.Client());
}
