 import 'package:either_dart/either.dart';

import '../entities/auth.entity.dart';
import '../erros/erros.dart';
import '../repostories/auth_repository.dart';

abstract class Auth{
   Future<Either<Failure, AuthEntity>> call(AuthenticationParams params);
}

class AuthImpl implements Auth{
  final AuthRepository repository;

  AuthImpl(this.repository);

  @override
  Future<Either<Failure, AuthEntity>> call(AuthenticationParams params) async {
    var result = await repository.login(params);
    print(result);
    return result;

  }
  

}
