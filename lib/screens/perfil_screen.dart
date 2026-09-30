import 'package:flutter/material.dart';
import 'package:meu_perfil/widgets/info.card.dart';
import 'package:meu_perfil/widgets/info.colum.dart';

//TELA DE PERFIL

// Essa classe representa a tela de perfil do aplicativo
class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold quem vai fornecer a estrutura visual basica da tela.
    return Scaffold(
      // Barra superior da tela
      appBar: AppBar(title: const Text('Meu Perfil'), centerTitle: true),

      // conteudo principal
      // body:  Center(child: Text('Tela de Perfil!')),
      // SingleChildScrollView deixar o  que o conteudo role quando for maior que a tela
      body: SingleChildScrollView(
        child: Padding(
          //Criando um espaço interno ao redor do conteudo.
          padding: EdgeInsets.all(24),
          // Coluna para organizar seus filhos verticalmente
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar cricular do perfil
              CircleAvatar(radius: 55, child: Icon(Icons.person, size: 65)),

              // criar um espaço vertical
              SizedBox(height: 20),

              // Primeiro texto da coluna
              //Nome do Usuario
              Text(
                'Jonathan Viana',
                style: TextStyle(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 77, 208, 231),
                  fontWeight: FontWeight.bold,
                ),
              ),
              // segundo texto da coluna
              Text(
                'Desenvolvedor Mobile',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 161, 18, 18),
                ),
              ),

              SizedBox(height: 30),

              // para mostrar o email
              // Container(
              //   // faz com que o container ocupar toda a largura disponivel
              //   width: double.infinity,
              //   // Espaçamento interno
              //   padding: const EdgeInsets.all(16),
              //   decoration: BoxDecoration(
              //     color: Colors.deepPurple.shade50,
              //     borderRadius: BorderRadius.circular(12),
              //   ),

              //   child: Row(
              //     children: [
              //       Icon(Icons.email),
              //       SizedBox(width: 12),
              //       Text('samira@email.com'),
              //     ],
              //   ),
              // ),
              const InfoCard(icon: Icons.email, text: 'jonathan.viana'),
              SizedBox(height: 12),

              const InfoCard(
                icon: Icons.developer_board,
                text: 'HTML,CSS,JS,PY',
              ),
              SizedBox(height: 12),

              // // para mostrar o telefone
              // Container(
              //   // faz com que o container ocupar toda a largura disponivel
              //   width: double.infinity,
              //   // Espaçamento interno
              //   padding: const EdgeInsets.all(16),
              //   decoration: BoxDecoration(
              //     color: Colors.deepPurple.shade50,
              //     borderRadius: BorderRadius.circular(12),
              //   ),

              //   child: Row(
              //     children: [
              //       Icon(Icons.phone),
              //       SizedBox(width: 12),
              //       Text('(11) 99999-9999'),
              //     ],
              //   ),
              // ),
              const InfoCard(icon: Icons.phone, text: '(11) 5851-5050'),

              SizedBox(height: 12),

              const InfoCard(icon: Icons.location_on, text: 'São Paulo - SP'),
              SizedBox(height: 30),
              const Text(
                'Tecnologias',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 15),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  // distribui os elementos entre os espaços disponiveis
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text('Flutter'), Text('Mobile'), Text('Firebase')],
                ),
              ),

              const Text(
                'Task front end ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const InfoColumn(icon: Icons.device_hub, text: "HTML"),

              const SizedBox(height: 15),

              const InfoColumn(icon: Icons.device_hub, text: "CSS"),

              const SizedBox(height: 35),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Botão Editar perfil precionado!'),
                      ),
                    );
                  },
                  child: const Text('Editar Perfil'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
