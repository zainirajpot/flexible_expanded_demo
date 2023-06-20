// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Expanded demo'),
      ),
      body: Column(
        children: [
          Text('top text widget'),
          Row(
            children: [
              Container(
                color: Colors.purple,
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.amber,
                ),
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              )
            ],
          ),
          Text('bottom text widget'),
          Row(
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  color: Colors.pink,
                  height: 100,
                ),
              ),

              Container(
                color: Colors.brown,
                height: 100,
                width: 300,
              ),

              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.orange,
                  height: 100,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
