import 'package:flutter/material.dart';

///**
/// Row
/// Main Axis        Cross Axis
///  --->                 |
///                       ^
///
/// Column
/// Main Axis        Cross Axis
///    |               -->
///    ^
///
class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rows & Column')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.red,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Elemento 1'),
                Text('Elemento 2'),
                Text('Elemento 3'),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.teal,
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(color: Colors.red, child: Text('Elemento 1')),
                      Container(color: Colors.red, child: Text('Elemento 2')),
                      Container(color: Colors.red, child: Text('Elemento 3')),
                    ],
                  ),
                ),
                Container(
                  color: Colors.lime,
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(color: Colors.orange, child: Text('Elemento 1')),
                      Container(color: Colors.orange, child: Text('Elemento 2')),
                      Container(color: Colors.orange, child: Text('Elemento 3')),
                    ],
                  ),
                ),
                Container(
                  color: Colors.brown,
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(color: Colors.purple, child: Text('Elemento 1')),
                      Container(color: Colors.purple, child: Text('Elemento 2')),
                      Container(color: Colors.purple, child: Text('Elemento 3')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Elemento 1'),
                Text('Elemento 2'),
                Text('Elemento 3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
