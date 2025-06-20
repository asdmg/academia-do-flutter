import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IdentificaPlataformaPage extends StatelessWidget {
  const IdentificaPlataformaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Identifica Plataforma')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                if (Platform.isIOS) {
                  return CupertinoAlertDialog(
                    title: Text('Alert Dialog'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Deseja realmente salvar ???'),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(onPressed: () {}, child: Text('Cancelar')),
                      TextButton(onPressed: () {}, child: Text('Confirmar')),
                    ],
                  );
                } else {
                  return AlertDialog(
                    title: Text('Alert Dialog'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Deseja realmente salvar ???'),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(onPressed: () {}, child: Text('Cancelar')),
                      TextButton(onPressed: () {}, child: Text('Confirmar')),
                    ],
                  );
                }
              },
            );
          },
          child: Text('Alert Dialog'),
        ),
      ),
    );
  }
}
