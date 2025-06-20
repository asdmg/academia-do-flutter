import 'package:flutter/material.dart';

import 'dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialogs')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) {
                    return DialogCustom(context);
                  },
                );
              },
              child: Text('Dialog'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('Simple Dialog'),
                      contentPadding: EdgeInsets.all(10),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('TituloX'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Fechar Dialog'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('SimpleDialog'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
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
                  },
                );
              },
              child: Text('Alert Dialog'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print('O horario selecionado foi $selectedTime');
              },
              child: Text('Time Picker'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2030),
                );
                print('A data selecionada foi:  $selectedDate');
              },
              child: Text('Date Picker'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: Icon(Icons.flutter_dash),
                );
              },
              child: Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
