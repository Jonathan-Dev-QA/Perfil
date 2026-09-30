//tela de catalogo
import 'package:flutter/material.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  //dados do nosso catalogo
  //List é uma coleção de valores e o string é que cada valor sera guardado em formato de texto
  final List<String> produtos = const [
    "notebook",
    'celular',
    'headset',
    'teclado',
    'mouse',
    'monitoe',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('catalogo')),
      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Produtos em destaque',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            SizedBox(
              //como a nossa listview sera jorizotal precisamo reservas uma altura para essa area que le podera ocupar

              height: 120,

              child: ListView.builder(
                //por padrão rola horizontalmente
                //axis muda a direão de rolagem
                scrollDirection: Axis.horizontal,
                //define quantos iten ele vai construir
                itemCount: produtos.length,

                //descreve como cada item sera montado
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, size: 32),
                        const SizedBox(height: 8),

                        Text(produtos[index], textAlign: TextAlign.center),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 24),
            const Text(
              'todos os produtos',

              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 55),
            ),
          ],
        ),
      ),
    );
  }
}
