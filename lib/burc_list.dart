import 'package:flutter/material.dart';

import 'modal/burc.dart';

class BurcList extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcList() {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burçlar listesi'),
      ),
      body: Center(
        child: Text('Burç listesi buraya gelecek'),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici=[];
    return gecici;
  }
}
