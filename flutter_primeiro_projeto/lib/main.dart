import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_primeiro_projeto/pages/media_query/media_query_page.dart';

import 'pages/container/container_page.dart';
import 'pages/home/home_page.dart';
import 'pages/layout_builder/layout_builder_page.dart';
import 'pages/rows_columns/rows_columns_page.dart';

void main() {
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (context) => const HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows-columns': (_) => RowsColumnsPage(),
        '/media-query': (_) => MediaQueryPage(),
        '/layout-builder': (_) => LayoutBuilderPage(),
        '/botoes-rotacao-texto': (_) => BotoesRotacaoTextoPage(),
      },
    );
  }
}
