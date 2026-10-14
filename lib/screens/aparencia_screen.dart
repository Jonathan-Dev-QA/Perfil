import 'package:flutter/material.dart';

class AparenciaScreen extends StatelessWidget {
  const AparenciaScreen({
    super.key,
    required this.modoAtual,
    required this.aoAlterarTema,
  });

  final ThemeMode modoAtual;

  final void Function(ThemeMode) aoAlterarTema;

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Aparência')),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Escolha o tema do aplicativo',
                style: TextStyle(fontSize: 22),
              ),

              const SizedBox(height: 16),

              SegmentedButton<ThemeMode>(
                segments: const [
                  ButtonSegment(
                    value: ThemeMode.system,
                    label: Text('Sistema'),
                  ),
                  ButtonSegment(value: ThemeMode.light, label: Text('Claro')),
                  ButtonSegment(value: ThemeMode.dark, label: Text('Escuro')),
                ],

                selected: {modoAtual},

                onSelectionChanged: (novosModos) {
                  aoAlterarTema(novosModos.first);
                },
              ),

              const SizedBox(height: 24),

              SegmentedButton<ThemeMode>(
                segments: const [
                  ButtonSegment(
                    value: ThemeMode.system,
                    label: Text('Sistema'),
                  ),
                  ButtonSegment(value: ThemeMode.light, label: Text('Claro')),
                  ButtonSegment(value: ThemeMode.dark, label: Text('Escuro')),
                ],

                selected: {modoAtual},

                onSelectionChanged: (novosModos) {
                  aoAlterarTema(novosModos.first);
                },
              ),

              const SizedBox(height: 24),

              // PRIMEIRO CARTÃO
              Container(
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: cores.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Text(
                  'Este cartão utiliza primaryContainer',
                  style: TextStyle(color: cores.onPrimaryContainer),
                ),
              ),

              const SizedBox(height: 16),

              // SEGUNDO CARTÃO
              Container(
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: cores.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Text(
                  'Este cartão utiliza surfaceContainerHighest',
                  style: TextStyle(color: cores.onSurface),
                ),
              ),

              const SizedBox(height: 24),

              const SizedBox(height: 24),

              Text(
                'Modo selecionado: ${modoAtual.name}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 16),

              Text('testes ', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
      ),
    );
  }
}
