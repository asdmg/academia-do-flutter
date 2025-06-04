import 'package:flutter/material.dart';

enum PopupMenuPages { container }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Home'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            tooltip: 'Selecione um Item do menu',
            //icon: Icon(Icons.restaurant_menu),
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
