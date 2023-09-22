import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/burc.dart';
// ignore: unused_import
import 'package:flutter_application_1/data/strings.dart';

// ignore: must_be_immutable
class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynagi();
    print(tumBurclar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burçlar Listesi")),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return Container();
        },
        itemCount: tumBurclar.length,
      )),
    );
  }

  List<Burc> veriKaynagi() {
    List<Burc> gecici = [];
    var kucukResim = "basak1.png";
    var buyukResim = "basak2.png";
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];

      Burc eklenecek =
          Burc(burcAdi, burcTarihi, burcDetay, kucukResim, buyukResim);
      gecici.add(eklenecek);
    }
    return gecici;
  }
}
