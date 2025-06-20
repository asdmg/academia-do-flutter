import 'package:flutter/material.dart';

enum PopupMenuPages { container, rowsColumns, mediaQuery, layoutBuilder, botoesRotacaoTexto, scrollsSingleChild, listview, dialogs, plataforma }

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
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows-columns');
                  break;
                case PopupMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed('/media-query');
                  break;
                case PopupMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed('/layout-builder');
                  break;
                case PopupMenuPages.botoesRotacaoTexto:
                  Navigator.of(context).pushNamed('/botoes-rotacao-texto');
                  break;
                case PopupMenuPages.scrollsSingleChild:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                  break;
                case PopupMenuPages.listview:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.plataforma:
                  Navigator.of(context).pushNamed('/plataforma');
                  break;
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
                PopupMenuItem(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text('LayoutBuilder'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.botoesRotacaoTexto,
                  child: Text('Botões & Rotação de Texto'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.scrollsSingleChild,
                  child: Text('Scroll SingleChild'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.listview,
                  child: Text('ListView'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.plataforma,
                  child: Text('Identifica Plataforma'),
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
