import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:letsgo/app/presentation/components/square.dart';
import 'package:letsgo/app/presentation/store/login/login.store.dart';
import 'package:provider/provider.dart';

import '../../components/CustomButton.dart';
import '../../components/CustomTextField.dart';

class LoginPage extends StatelessWidget {

   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
     LoginStore store = LoginStore();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'asset/images/logo.jpeg',
                width: 600.0,
                height: 240.0,
              ),
              const SizedBox(height: 50),
              Observer(builder: (_){
                return Text(
                  'Sua viagem a um click de distancia! :)',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                );
              }),
              const SizedBox(height: 25),
              CustomTextField(
                onChanged: store.setEmail,
                hintText: 'email',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                onChanged: store.setSenha,
                hintText: 'senha',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Esqueci minha senha?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              CustomButton(
                onTap: store.login
              ),
              const SizedBox(height: 50),
              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Fazer login com',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Square(imagePath: 'asset/images/google.png'),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Não possiu acesso?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Clique aqui!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
