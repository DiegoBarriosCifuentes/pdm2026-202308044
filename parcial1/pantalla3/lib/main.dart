import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const kFondo = Color(0xFFF3F4F4);
const kBlanco = Color(0xFFFFFFFF);
const kTexto = Color(0xFF202020);
const kTextoSecundario = Color(0xFF777777);
const kBorde = Color(0xFFE5E5E5);
const kVerde = Color(0xFFC8F54E);
const kVerdeOscuro = Color(0xFF718D22);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pantalla 3',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kFondo,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kVerde,
          brightness: Brightness.light,
        ),
      ),
      home: const PantallaPerfil(),
    );
  }
}

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFondo,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          children: [
            const Center(
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kTexto,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: const BoxDecoration(
                      color: kVerde,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, size: 70, color: kTexto),
                  ),
                  Positioned(
                    right: -5,
                    bottom: 0,
                    child: Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: kBlanco,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: kBorde),
                      ),
                      child: const Icon(
                        Icons.edit_outlined,
                        size: 20,
                        color: kTexto,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: kBlanco,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kBorde),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Personal info',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: kTexto,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: kVerdeOscuro,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  infoPersonal(Icons.person_outline, 'Name', 'Diego Barrios'),
                  const SizedBox(height: 20),
                  infoPersonal(
                    Icons.mail_outline,
                    'E-mail',
                    'diegobarrios@gmail.com',
                  ),
                  const SizedBox(height: 20),
                  infoPersonal(
                    Icons.phone_outlined,
                    'Phone number',
                    '+502 1111-5555',
                  ),
                  const SizedBox(height: 20),
                  infoPersonal(
                    Icons.home_outlined,
                    'Vive en',
                    'Quetzaltenango llanos del pinal',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: kBlanco,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kBorde),
              ),
              child: const Text(
                'Account info',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: kTexto,
                ),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBlanco,
        selectedItemColor: kVerdeOscuro,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 11,
        unselectedFontSize: 10,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Transfer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

Widget infoPersonal(IconData icono, String titulo, String contenido) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: 35,
        child: Icon(icono, size: 23, color: kTexto),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 12,
                color: kTextoSecundario,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              contenido,
              style: const TextStyle(
                fontSize: 14,
                color: kTexto,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}