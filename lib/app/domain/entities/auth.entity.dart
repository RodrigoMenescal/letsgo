import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class AuthEntity extends Equatable{
  final String email;
  final String senha;

  AuthEntity({
    required this.email, required this.senha
  });

  @override
  // TODO: implement props
  List<Object?> get props => [email, senha];
}