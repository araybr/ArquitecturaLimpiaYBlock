import 'package:dartz/dartz.dart';
import 'package:flutter_counter_block/domain/entities/user.dart';
import 'package:flutter_counter_block/domain/repositories/login_repository.dart';

class LoginUser {
  final LoginRepository repository;
  LoginUser(this.repository);
  Future<Either<Exception, User>> call(String email, String password) async {
    return await repository.login(email, password);
  }
}
