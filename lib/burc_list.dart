import 'package:flutter/material.dart';
import 'package:horoscope_list/burc_item.dart';
import 'package:horoscope_list/data/str.dart';

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
        child: ListView.builder(itemBuilder: (context,index){
          return BurcItem(listelenenBurc: tumBurclar[index]);
        },itemCount: tumBurclar.length,),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var  burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk${i + 1}.png';
      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
