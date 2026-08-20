import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

// Classe MeuApp - Ponto de início preparação dos widgets
class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agendamento de Evento',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Aponta Home para Classe AgendamentoEventoTela
      home: const AgendamentoEventoTela(),
    );
  }
}

class AgendamentoEventoTela extends StatefulWidget {
  const AgendamentoEventoTela({super.key});

  @override
  State<AgendamentoEventoTela> createState() => _AgendamentoEventoTelaState();
}

class _AgendamentoEventoTelaState extends State<AgendamentoEventoTela> {
  // --- 1. Valores Padrão (para reset)
  static final DateTime _dataPadrao = DateTime.now();
  static final TimeOfDay _horarioPadrao = TimeOfDay(hour: 19, minute: 0);

  // --- 2. Variáveis de Estado ---
  late DateTime _dataSelecionada;
  late TimeOfDay _horarioSelecionado;

  @override
  void initState() {
    super.initState();
    _resetarValores();
  }

  void _resetarValores() {
    setState(() {
      _dataSelecionada = _dataPadrao;
      _horarioSelecionado = _horarioPadrao;
    });
    print('[DEBUG] Formulário resetado para os valores padrão.');
  }

  void _salvarFormulario() {
    print('=============================');
    print('    RESUMO DO AGENDAMENTO    ');
    print('=============================');
    print(
      'Data: ${_dataSelecionada.day}/${_dataSelecionada.month}/${_dataSelecionada.year}',
    );
    print('Horário: ${_horarioSelecionado.format(context)}');
    print('-----------------------------');

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Evento salvo com sucesso! Veja os logs no console.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Evento Social'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- 1. DatePicker & 2. TimePicker ---
            Text(
              'Data e Horário:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.calendar_today),
                    label: Text(
                      '${_dataSelecionada.day}/${_dataSelecionada.month}/${_dataSelecionada.year}',
                    ),
                    onPressed: () => _selecionarData(context),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.access_time),
                    label: Text(_horarioSelecionado.format(context)),
                    onPressed: () => _selecionarHorario(context),
                  ),
                ),
              ],
            ),
            const Divider(height: 32),
          ],
        ),
      ),
    );
  }
}
