// tela de cadastro

import 'package:flutter/material.dart';

// pode ser alterada statefull
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // chave de formulario

  // globalkey é uma chave que permite acessar wigdet especifico do estado associado a ele

  // <FormState> informa que esta chave será utiliza para acessar este widget form

  final _formKey = GlobalKey<FormState>();

  String _senha = '';

  bool _ocultarSenha = true;

  bool _ocultarComfirmacao = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('cadastro')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'crie sua conta',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 18),

                const Text("preencha abaixo para continuar"),

                const SizedBox(height: 18),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'nome completo',
                    hintText: 'Digite seu nome',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'informe o valor';
                    }

                    if (value.trim().length < 3) {
                      return 'digite pelo menos 3 caracteres';
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 18),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'seu email',
                    hintText: 'Digite seu email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'informe seu email';
                    }

                    if (!value.contains('@')) {
                      return 'digite um email valido';
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 16),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Sua cidade',
                    hintText: 'Digite sua cidade',
                    prefixIcon: Icon(Icons.maps_home_work),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'informe sua cidade';
                    }

                    if (value.length < 3) {
                      return 'informe ao menos 3 caracteres ';
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 18),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Seu telefone',
                    hintText: 'Digite seu Telefone',
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'informe seu telefone';
                    }

                    if (value.length < 3) {
                      return 'informe ao menos 3 caracteres ';
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 18),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'sua senha',
                    hintText: 'Digite sua senha',

                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 59, 111, 179),
                    ),

                    prefixIcon: const Icon(Icons.lock),

                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _ocultarSenha ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _ocultarSenha = !_ocultarSenha;
                        });
                      },
                    ),
                  ),

                  obscureText: _ocultarSenha,

                  onChanged: (value) {
                    _senha = value;
                  },

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'informe sua senha';
                    }

                    if (value.length < 6) {
                      return 'a senha deve ter pelo menos 6 caracteres';
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 24),

                // botão cadastrar
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final formularioValidado =
                          // currentstate acessa o estado atual do form
                          // ?. executa o validate somente se o currentState não for null
                          //?? false vai usar o caso resultrado seja null
                          _formKey.currentState?.validate() ?? false;

                      if (formularioValidado) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('cadastro validado com sucesso'),
                          ),
                        );
                      }
                    },
                    child: const Text('Cadastrar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // body: const Center(child: Text('tela de cadastro')),
    );
  }
}
