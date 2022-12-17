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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/' + secilenBurc.burcBuyukResin),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(secilenBurc.burcDetayi),
            ),
          )
        ],
      ),
    );
  }
}
