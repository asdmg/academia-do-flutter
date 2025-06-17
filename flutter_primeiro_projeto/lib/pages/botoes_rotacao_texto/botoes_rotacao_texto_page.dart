import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botões e Rotação de Texto')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.red,
                    child: Text('Alex Sander', style: TextStyle(fontSize: 32)),
                  ),
                ),
                Icon(Icons.ac_unit),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 245, 165, 162),
                padding: EdgeInsets.all(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              child: Text('Salvar'),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 171, 165),
                shadowColor: Colors.blue,
                minimumSize: Size(120, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              child: Text('Salvar'),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.airplane_ticket),
              label: Text('Modo Avião'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: WidgetStateProperty.all(Colors.blue),
                minimumSize: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Size(150, 150);
                  } else if (states.contains(WidgetState.hovered)) {
                    return Size(180, 180);
                  }
                  return Size(120, 50);
                }),
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.black;
                  } else if (states.contains(WidgetState.hovered)) {
                    return Colors.amber;
                  }
                  return Colors.red;
                }),
              ),
              child: Text('Salvar'),
            ),
            const SizedBox(height: 10),
            InkWell(child: Text('InkWel'), onTap: () {}),
            const SizedBox(height: 10),
            GestureDetector(
              child: Text('Gesture detector'),
              onTap: () => print('Gesture Clicado'),
              onVerticalDragStart: (_) => print('Start'),
            ),
            const SizedBox(height: 10),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [BoxShadow(blurRadius: 10, offset: Offset(0, 5))],
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(50),
                child: Center(
                  child: Text(
                    'Botão Salvar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
