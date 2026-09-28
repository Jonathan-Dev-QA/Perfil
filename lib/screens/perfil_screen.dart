import 'package:flutter/material.dart';

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
      body: Padding(
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
              ' Samira Vieira',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // segundo texto da coluna
            Text(
              'Desenvolvedora Mobile',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            SizedBox(height: 30),

            Container(
              // faz com que o container ocupar toda a largura disponivel
              width: double.infinity,
              // Espaçamento interno
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(12),
              ),

              child: Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 12),
                  Text('samira@email.com'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
