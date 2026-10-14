import 'package:flutter/material.dart';
import 'package:meu_perfil/screens/catalogo_screen.dart';
import 'package:meu_perfil/screens/events_screen.dart';
import 'package:meu_perfil/widgets/info.card.dart';
import 'package:meu_perfil/widgets/info.colum.dart';
import 'package:meu_perfil/screens/preferences_screen.dart';

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

      //começamos adicionar as mudanças para o menu
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          //children recebe os widgets que serão apresentados no menu
          children: [
            const DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('meu perfil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text('Catalogo'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CatalogoScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('eventos'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EventsScreen()),
                );
              },
            ),
          ],
        ),
      ),

      // conteudo principal
      // body: Center(child: Text('Tela de Perfil!')),
      // SingleChildScrollView deixar o que o conteudo role quando for maior que a tela
      body: SingleChildScrollView(
        child: Padding(
          //Criando um espaço interno ao redor do conteudo.
          padding: const EdgeInsets.all(24),

          // Coluna para organizar seus filhos verticalmente
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar circular do perfil
              const CircleAvatar(
                radius: 55,
                child: Icon(Icons.person, size: 65),
              ),

              // criar um espaço vertical
              const SizedBox(height: 20),

              // Primeiro texto da coluna
              // Nome do Usuario
              const Text(
                'Jonathan Viana',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 77, 208, 231),
                  fontWeight: FontWeight.bold,
                ),
              ),

              // segundo texto da coluna
              const Text(
                'Desenvolvedor Mobile',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 161, 18, 18),
                ),
              ),

              const SizedBox(height: 30),

              const InfoCard(icon: Icons.email, text: 'jonathan.viana'),

              const SizedBox(height: 12),

              const InfoCard(
                icon: Icons.developer_board,
                text: 'HTML,CSS,JS,PY',
              ),

              const SizedBox(height: 12),

              const InfoCard(icon: Icons.phone, text: '(11) 5851-5050'),

              const SizedBox(height: 12),

              const InfoCard(icon: Icons.location_on, text: 'São Paulo - SP'),

              const SizedBox(height: 30),

              const Text(
                'Tecnologias',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

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

              const SizedBox(height: 15),

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
