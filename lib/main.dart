import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var frases = [
    'Frase 1',
    'Frase 2',
    'Frase 3',
    'Frase 4',
  ];

  var fraseGerada = 'Clique abaixo para gerar uma frase';

  void gerarFrases() {
    var numeroSorteado = Random().nextInt(frases.length);
    setState(() {
      fraseGerada = frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          // width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              Text(
                fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.green),
                ),
                onPressed: gerarFrases,
                child: const Text(
                  'Nova frase',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
