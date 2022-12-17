import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscope_list/modal/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(secilenBurc.burcAdi),
            Text(secilenBurc.burcDetayi),
            Text(secilenBurc.burcTarihi)
          ],
        ),
      ),
    );
  }
}
