import 'package:flutter/material.dart';

class BurcList extends StatelessWidget {
  const BurcList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Burçlar listesi'),),body: Center(child: Text('Burç listesi buraya gelecek'),),);
  }
}
