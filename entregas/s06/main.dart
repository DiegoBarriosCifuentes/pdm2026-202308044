import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi día',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F7F3),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7FA38F),
        ),
      ),
      home: const PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7F3),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Saludo
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: const Color(0xFFDDEAE2),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hola, Alexia',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF40534A),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Espero que estés teniendo un buen día.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF66776F),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Estado de ánimo
              Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.sentiment_satisfied_alt,
                            color: Color(0xFF7FA38F),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              '¿Cómo te encuentras el día de hoy?',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF40534A),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 18),

                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.sentiment_very_satisfied,
                            ),
                            label: const Text('Bien'),
                          ),

                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.sentiment_neutral,
                            ),
                            label: const Text('Regular'),
                          ),

                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.sentiment_dissatisfied,
                            ),
                            label: const Text('Mal'),
                          ),

                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.sentiment_very_dissatisfied,
                            ),
                            label: const Text('Devastada'),
                          ),

                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                            ),
                            label: const Text('Otro'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Evaluación del día
              Card(
                color: const Color(0xFFE7EFF5),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Evaluación del día',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF40534A),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              '26/07/2026',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF687B73),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7FA38F),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 22,
                            vertical: 14,
                          ),
                        ),
                        child: const Text('Iniciar'),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Compartir el día
              Card(
                color: const Color(0xFFF0ECF7),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.edit_note,
                        size: 35,
                        color: Color(0xFF8C7CAF),
                      ),

                      const SizedBox(width: 14),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Comparte tu día',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4B4655),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Cuéntanos con más detalle cómo estuvo tu día.',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF706B78),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 8),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF9486B4),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Escribir'),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Historial de evaluaciones
              const Text(
                'Historial de evaluaciones',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF40534A),
                ),
              ),

              const SizedBox(height: 10),

              Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDDEAE2),
                        child: Icon(
                          Icons.sentiment_satisfied_alt,
                          color: Color(0xFF6F9280),
                        ),
                      ),
                      title: Text('Evaluación'),
                      subtitle: Text('25/07/2026'),
                      trailing: Text(
                        'Bien',
                        style: TextStyle(
                          color: Color(0xFF6F9280),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFE7EFF5),
                        child: Icon(
                          Icons.sentiment_neutral,
                          color: Color(0xFF718DA1),
                        ),
                      ),
                      title: Text('Evaluación'),
                      subtitle: Text('24/07/2026'),
                      trailing: Text(
                        'Regular',
                        style: TextStyle(
                          color: Color(0xFF718DA1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFF4E6DE),
                        child: Icon(
                          Icons.sentiment_dissatisfied,
                          color: Color(0xFFA77E6A),
                        ),
                      ),
                      title: Text('Evaluación'),
                      subtitle: Text('23/07/2026'),
                      trailing: Text(
                        'Mal',
                        style: TextStyle(
                          color: Color(0xFFA77E6A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Historial de días
              const Text(
                'Historial de tus días detallados',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF40534A),
                ),
              ),

              const SizedBox(height: 10),

              Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFFF0ECF7),
                    child: Icon(
                      Icons.menu_book_outlined,
                      color: Color(0xFF8C7CAF),
                    ),
                  ),
                  title: Text('Detalle del día'),
                  subtitle: Text(
                    '23/07/2026 · Hoy fue un día tranquilo...',
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Color(0xFF87958F),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Tareas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tareas',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF40534A),
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text('Crear tarea'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7FA38F),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.circle_outlined,
                        color: Color(0xFF7FA38F),
                      ),
                      title: Text('Maqueta'),
                      subtitle: Text('Prioridad alta'),
                      trailing: Text(
                        'Alta',
                        style: TextStyle(
                          color: Color(0xFFA66F6F),
                        ),
                      ),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: Icon(
                        Icons.circle_outlined,
                        color: Color(0xFF7FA38F),
                      ),
                      title: Text('Dibujo'),
                      subtitle: Text('Prioridad baja'),
                      trailing: Text(
                        'Baja',
                        style: TextStyle(
                          color: Color(0xFF719286),
                        ),
                      ),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: Icon(
                        Icons.circle_outlined,
                        color: Color(0xFF7FA38F),
                      ),
                      title: Text('Comic'),
                      subtitle: Text('Prioridad media'),
                      trailing: Text(
                        'Media',
                        style: TextStyle(
                          color: Color(0xFF9A8A65),
                        ),
                      ),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: Icon(
                        Icons.circle_outlined,
                        color: Color(0xFF7FA38F),
                      ),
                      title: Text('Vectorizar'),
                      subtitle: Text('Prioridad baja'),
                      trailing: Text(
                        'Baja',
                        style: TextStyle(
                          color: Color(0xFF719286),
                        ),
                      ),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: Icon(
                        Icons.circle_outlined,
                        color: Color(0xFF7FA38F),
                      ),
                      title: Text('Pintura'),
                      subtitle: Text('Prioridad muy alta'),
                      trailing: Text(
                        'Muy alta',
                        style: TextStyle(
                          color: Color(0xFFA66F6F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Recordatorios
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recordatorios',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF40534A),
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_outlined,
                    ),
                    label: const Text('Crear'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9486B4),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Card(
                color: const Color(0xFFF0ECF7),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.notifications_none,
                        color: Color(0xFF8C7CAF),
                      ),
                      title: Text('Entregar maqueta'),
                      subtitle: Text('Mañana · 8:00 a. m.'),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: Icon(
                        Icons.notifications_none,
                        color: Color(0xFF8C7CAF),
                      ),
                      title: Text('Realizar ejercicio'),
                      subtitle: Text(
                        '30 de julio · 4:00 p. m.',
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Calendario
              const Text(
                'Calendario',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF40534A),
                ),
              ),

              const SizedBox(height: 10),

              Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

                // Importante:
                // Este Padding NO lleva const porque contiene un Table.
                child: Padding(
                  padding: const EdgeInsets.all(18),

                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.chevron_left,
                            color: Color(0xFF7FA38F),
                          ),

                          Text(
                            'Julio 2026',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF40534A),
                            ),
                          ),

                          Icon(
                            Icons.chevron_right,
                            color: Color(0xFF7FA38F),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Table(
                        children: const [
                          // Días de la semana
                          TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Lun',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF687B73),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Mar',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF687B73),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Mié',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF687B73),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Jue',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF687B73),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Vie',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF687B73),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Sáb',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF687B73),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Dom',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF687B73),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Primera semana
                          TableRow(
                            children: [
                              CeldaCalendario(texto: ''),
                              CeldaCalendario(texto: ''),
                              CeldaCalendario(texto: '1'),
                              CeldaCalendario(texto: '2'),
                              CeldaCalendario(texto: '3'),
                              CeldaCalendario(texto: '4'),
                              CeldaCalendario(texto: '5'),
                            ],
                          ),

                          // Segunda semana
                          TableRow(
                            children: [
                              CeldaCalendario(texto: '6'),
                              CeldaCalendario(texto: '7'),
                              CeldaCalendario(texto: '8'),
                              CeldaCalendario(texto: '9'),
                              CeldaCalendario(texto: '10'),
                              CeldaCalendario(texto: '11'),
                              CeldaCalendario(texto: '12'),
                            ],
                          ),

                          // Tercera semana
                          TableRow(
                            children: [
                              CeldaCalendario(texto: '13'),
                              CeldaCalendario(texto: '14'),
                              CeldaCalendario(texto: '15'),
                              CeldaCalendario(texto: '16'),
                              CeldaCalendario(texto: '17'),
                              CeldaCalendario(texto: '18'),
                              CeldaCalendario(texto: '19'),
                            ],
                          ),

                          // Cuarta semana
                          TableRow(
                            children: [
                              CeldaCalendario(texto: '20'),
                              CeldaCalendario(texto: '21'),
                              CeldaCalendario(texto: '22'),
                              CeldaCalendario(texto: '23'),
                              CeldaCalendario(texto: '24'),
                              CeldaCalendario(texto: '25'),
                              CeldaCalendario(
                                texto: '26',
                                seleccionado: true,
                              ),
                            ],
                          ),

                          // Quinta semana
                          TableRow(
                            children: [
                              CeldaCalendario(texto: '27'),
                              CeldaCalendario(texto: '28'),
                              CeldaCalendario(texto: '29'),
                              CeldaCalendario(texto: '30'),
                              CeldaCalendario(texto: '31'),
                              CeldaCalendario(texto: ''),
                              CeldaCalendario(texto: ''),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Botón de análisis
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.analytics_outlined,
                  ),
                  label: const Text(
                    'Análisis',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF708E80),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// Celda simple utilizada en el calendario
class CeldaCalendario extends StatelessWidget {
  final String texto;
  final bool seleccionado;

  const CeldaCalendario({
    super.key,
    required this.texto,
    this.seleccionado = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 2,
      ),
      child: Container(
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: seleccionado
              ? const Color(0xFFDDEAE2)
              : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 13,
            fontWeight:
                seleccionado ? FontWeight.bold : FontWeight.normal,
            color: seleccionado
                ? const Color(0xFF507060)
                : const Color(0xFF59645F),
          ),
        ),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
