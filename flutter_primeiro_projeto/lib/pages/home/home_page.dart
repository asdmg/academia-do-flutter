import 'package:flutter/material.dart';

enum PopupMenuPages { container, rowsColumns, mediaQuery }

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
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows-columns');
                case PopupMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed('/media-query');
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows & Columns'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.mediaQuery,
                  child: Text('MediaQuery'),
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
