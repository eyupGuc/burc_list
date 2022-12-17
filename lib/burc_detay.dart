import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscope_list/modal/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.pink;
  late PaletteGenerator _generator;

  @override
  void initState() {
    appbarRenginiBul();
    //_generator=PaletteGenerator.fromImageProvider(AssetImage(assetName))
    super.initState();
  }

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
              title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
              background: Image.asset(
                'images/' + widget.secilenBurc.burcBuyukResin,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenBurc.burcDetayi,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage(('images/${widget.secilenBurc.burcBuyukResin}')));
    appbarRengi=_generator.dominantColor!.color;
    print(appbarRengi);
  }
}
