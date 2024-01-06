import 'package:flutter/material.dart';

class cria_conta extends StatefulWidget {
  const cria_conta({super.key});

  @override
  State<cria_conta> createState() => _cria_contaState();
}

class _cria_contaState extends State<cria_conta> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController utilizadorController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numeroController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Criar Conta'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: utilizadorController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nome Utilizador"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor coloque um nome de utilizador';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                  validator: (value) { //^[\w\-\.]+@([\w-]+\.)+[\w-]{2,}$
                    if (value == null || value.isEmpty) {
                      return 'Por favor coloque o seu email';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: numeroController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Número telemóvel"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor coloque o seu número de telémovel';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "Pass",
                      suffixIcon: IconButton(
                        icon: Icon(_showPassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor coloque a sua password';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.pop(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Por favor preencha os campos!')),
                        );
                      }
                    },
                    child: const Text('Registar'),
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
