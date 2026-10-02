// TELA DE PREFERENCIAS

import 'package:flutter/material.dart';

// Nossa tela tera mudanças, por isso escolhemos a opção de StatefullWidget
class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key});

  @override
  // estamos preparando o widget para ter alteração de estado
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

// Estado da Tela
// A classe State guarda os valores que podem mudar
// e contem o metodo build() que monta a interface
class _PreferencesScreenState extends State<PreferencesScreen> {
  //String esta guarando texto  com algumas valores já inicial
  //Iniciaremos o dropdown
  String temaSelecionado = 'Tecnologia';
  // Essa guarda o valor do Radio selecionado, que começa inicialmente com iniciante
  String nivelSelecionado = 'Iniciante';
  // false significa que a opção começa desmarcada
  bool receberNovidades = false;
  // Começa com false  portanto o Switch iniciara desligado
  bool receberNotificacao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preferencias')),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Text(
                'Configure suas preferencias',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 24),

              // Os componentes seram adicionados aqui
              const Text(
                'Seu nome',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              // ele cria  um campo no qual o usuario pode digitar o tetxo

              TextField(
                // decoration recem um InputDeoratio
                //concetra
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Digite seu nome',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 24),

              const Text(
                'tema de interesse',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              //const SizedBox.shrink
              const SizedBox(height: 8),

              DropdownButton<String>(
                value: temaSelecionado,
                isExpanded: true,
                items: const [
                  DropdownMenuItem(
                    value: 'Tecnologia',
                    child: Text('Tecnologia'),
                  ),

                  DropdownMenuItem(value: 'jogos', child: Text('Jogos')),
                  DropdownMenuItem(value: 'Design', child: Text('Design')),
                  DropdownMenuItem(value: 'fut', child: Text('fut')),
                ],

                onChanged: (novoValor) {
                  if (novoValor != null) {
                    setState(() {
                      temaSelecionado = novoValor;
                    });
                  }
                },
              ),
              const SizedBox(height: 24),

              const Text(
                'nivel de experiencia',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              // radiolisttle: value x groupvlue
              RadioGroup<String>(
                groupValue: nivelSelecionado,

                onChanged: (novoValor) {
                  if (novoValor != null) {
                    setState(() {
                      nivelSelecionado = novoValor;
                    });
                  }
                },
                child: Row(
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('ini'),
                        value: 'ini',
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('inter'),
                        value: 'inter',
                      ),
                    ),

                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('avan'),
                        value: 'avan',
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('exp'),
                        value: 'exp',
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              //Checkboxlist e valores boleanos
              CheckboxListTile(
                title: const Text('Quero receber novidades'),

                value: receberNovidades,
                onChanged: (novoValor) {
                  setState(() {
                    receberNovidades = novoValor ?? false;
                  });
                },
              ),
              const SizedBox(height: 8),
              // SwitchListTitle
              SwitchListTile(
                title: const Text('Ativar Notificações'),
                value: receberNotificacao,
                onChanged: (novoValor) {
                  setState(() {
                    receberNotificacao = novoValor;
                  });
                },
              ),
              const SizedBox(height: 24),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Resuumo de preferencias',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 18),
                    Text('tema : $temaSelecionado'),
                    Text('nivel : $nivelSelecionado'),
                    Text(
                      'novidades:'
                      '${receberNovidades ? 'sim' : 'Não'}',
                    ),
                    Text(
                      'notificações:'
                      '${receberNotificacao ? 'ativados' : 'desativados'}',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
