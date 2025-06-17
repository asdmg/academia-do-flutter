import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Builder Page')),
      // aqui no LayoutBuilder herdou a configuração do Center
      // é um coringa para quando quiser saber o tamanho que o seu widget
      // nem sempre vai dar certo pois se o widget pai for tamanho infinito ou quanquer tamanho é isso que vai chegar no width e height
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  width: constraints.maxWidth * .50,
                  height: constraints.maxHeight * .5,
                ),
                Container(
                  color: Colors.blue,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
