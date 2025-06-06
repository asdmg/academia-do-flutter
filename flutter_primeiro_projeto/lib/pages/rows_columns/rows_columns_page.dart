import 'package:flutter/material.dart';

//**
// * This is a Flutter page that demonstrates the use of Rows and Columns
// *          Row                   Column
//*
// *        Main Axis            Main Axis
// * ┌───────────────────┐ ┌───────────────────┐      
// * │        -->        │ │          │        │
// *
// *        Cross Axis          Cross Axis
// * ┌───────────────────┐ ┌───────────────────┐  
// * │         │         │ │         -->       │
// */
class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width / 3;
    double height = size.height / 3;

    return Scaffold(
      appBar: AppBar(title: const Text('Rows & Columns')),
      body: Row(
        children: [
          Container(
            width: width,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.green,
                  height: height - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Item 1', style: TextStyle(fontSize: 20)),
                      Text('Item 2', style: TextStyle(fontSize: 20)),
                      Text('Item 3', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.lightGreen,
                  height: height - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Item 1', style: TextStyle(fontSize: 20)),
                      Text('Item 2', style: TextStyle(fontSize: 20)),
                      Text('Item 3', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  height: height - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Item 1', style: TextStyle(fontSize: 20)),
                      Text('Item 2', style: TextStyle(fontSize: 20)),
                      Text('Item 3', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.pink,
                  height: height - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Item 1', style: TextStyle(fontSize: 20)),
                      Text('Item 2', style: TextStyle(fontSize: 20)),
                      Text('Item 3', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  height: height - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Item 1', style: TextStyle(fontSize: 20)),
                      Text('Item 2', style: TextStyle(fontSize: 20)),
                      Text('Item 3', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  height: height - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Item 1', style: TextStyle(fontSize: 20)),
                      Text('Item 2', style: TextStyle(fontSize: 20)),
                      Text('Item 3', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.orange,
                  height: height - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Item 1', style: TextStyle(fontSize: 20)),
                      Text('Item 2', style: TextStyle(fontSize: 20)),
                      Text('Item 3', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: height - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Item 1', style: TextStyle(fontSize: 20)),
                      Text('Item 2', style: TextStyle(fontSize: 20)),
                      Text('Item 3', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.deepOrange,
                  height: height - 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Item 1', style: TextStyle(fontSize: 20)),
                      Text('Item 2', style: TextStyle(fontSize: 20)),
                      Text('Item 3', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
