import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View')),
      // vai carregando os dados a medida que vai rolando
      body: ListView.separated(
        itemCount: 1000,
        separatorBuilder: (context, index) {
          return Divider(color: Colors.red);
        },
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: Text('Flutter é TOP'),
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png',
              ),
            ),
            trailing: CircleAvatar(),
          );
        },
      ),
    );
  }
}
