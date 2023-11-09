import 'package:either_dart/either.dart';

import '../entities/auth.entity.dart';
import '../erros/erros.dart';


abstract class AuthRepository{
  Future<Either<Failure, AuthEntity>> login(AuthenticationParams params);
}

class AuthenticationParams {
  final String email;
  final String senha;

  AuthenticationParams({
    required this.email,
    required this.senha
  });

}