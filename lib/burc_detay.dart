import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscope_list/modal/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(secilenBurc.burcAdi+" Burcu ve Özellikleri"),
              background: Image.asset('images/' + secilenBurc.burcBuyukResin,fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
