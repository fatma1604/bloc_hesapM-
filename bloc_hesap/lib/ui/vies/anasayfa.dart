import 'package:bloc_hesap/ui/cubit/anasayfa_cubiti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _DenState();
}

class _DenState extends State<Anasayfa> {
  final TextEditingController _sayi1Controller = TextEditingController();
  final TextEditingController _sayi2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Pattern"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnasayfaCubiti, int>(
                //Dinleme
                builder: (context, sonuc) {
                  return Text(
                    sonuc.toString(),
                    style: const TextStyle(fontSize: 50),
                  );
                },
              ),
              TextField(
                controller: _sayi1Controller,
                decoration: const InputDecoration(hintText: "Sayı 1"),
              ),
              TextField(
                controller: _sayi2Controller,
                decoration: const InputDecoration(hintText: "Sayı 2"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<AnasayfaCubiti>().toplamayap(
                            _sayi1Controller.text, _sayi2Controller.text);
                      },
                      child: const Text("Toplama")),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<AnasayfaCubiti>()
                            .carp(_sayi1Controller.text, _sayi2Controller.text);
                      },
                      child: const Text("Çarpma")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
