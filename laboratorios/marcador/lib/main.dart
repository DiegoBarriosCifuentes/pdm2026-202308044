import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Marcador Deportivo', home: const MarcadorPage());
  }
}

class MarcadorPage extends StatefulWidget {
  const MarcadorPage({super.key});

  @override
  State<MarcadorPage> createState() => _MarcadorPageState();
}

class _MarcadorPageState extends State<MarcadorPage> {
  int puntosTeamLiquid = 0;
  int puntosOnic = 0;

  void incrementarLiquid() {
    setState(() {
      puntosTeamLiquid++;
    });
  }

  void decrementarLiquid() {
    setState(() {
      if (puntosTeamLiquid > 0) {
        puntosTeamLiquid--;
      }
    });
  }

  void incrementarOnic() {
    setState(() {
      puntosOnic++;
    });
  }

  void decrementarOnic() {
    setState(() {
      if (puntosOnic > 0) {
        puntosOnic--;
      }
    });
  }

  void reiniciar() {
    setState(() {
      puntosTeamLiquid = 0;
      puntosOnic = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color verdeGanador = Color(0xFF1B8A3A);
    const Color fondoNeutro = Color(0xFFEEEEEE);
    final bool ganaTeamLiquid = puntosTeamLiquid > puntosOnic;
    final bool ganaOnic = puntosOnic > puntosTeamLiquid;

    String mensaje;
    if (puntosTeamLiquid == puntosOnic) {
      mensaje = 'Empate';
    } else if (ganaTeamLiquid) {
      mensaje = 'Va ganando Team Liquid';
    } else {
      mensaje = 'Va ganando ONIC';
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Marcador Deportivo')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Equipo(
                nombre: 'Team Liquid',
                puntos: puntosTeamLiquid,
                colorFondo: ganaTeamLiquid ? verdeGanador : fondoNeutro,
                colorTexto: ganaTeamLiquid
                    ? Colors.white
                    : const Color(0xFF0B1F3A),
                colorAcento: ganaTeamLiquid
                    ? Colors.white
                    : const Color(0xFFC9A227),
                onIncrementar: incrementarLiquid,
                onDecrementar: decrementarLiquid,
              ),
              const SizedBox(height: 20),
              Equipo(
                nombre: 'ONIC',
                puntos: puntosOnic,
                colorFondo: ganaOnic ? verdeGanador : fondoNeutro,
                colorTexto: ganaOnic ? Colors.white : Colors.black87,
                colorAcento: ganaOnic ? Colors.white : const Color(0xFFFFC400),
                onIncrementar: incrementarOnic,
                onDecrementar: decrementarOnic,
              ),
              const SizedBox(height: 20),
              Text(
                mensaje,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: reiniciar,
                child: const Text('Reiniciar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Equipo extends StatelessWidget {
  const Equipo({
    super.key,
    required this.nombre,
    required this.puntos,
    required this.colorFondo,
    required this.colorTexto,
    required this.colorAcento,
    required this.onIncrementar,
    required this.onDecrementar,
  });

  final String nombre;
  final int puntos;
  final Color colorFondo;
  final Color colorTexto;
  final Color colorAcento;
  final VoidCallback onIncrementar;
  final VoidCallback onDecrementar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorFondo,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorAcento, width: 3),
      ),
      child: Column(
        children: [
          Text(
            nombre,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: colorTexto,
            ),
          ),
          const SizedBox(height: 4),
          Text('$puntos', style: TextStyle(fontSize: 48, color: colorTexto)),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: onIncrementar, child: const Text('+1')),
              const SizedBox(width: 16),
              ElevatedButton(onPressed: onDecrementar, child: const Text('-1')),
            ],
          ),
        ],
      ),
    );
  }
}
