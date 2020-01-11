import 'package:flutter/material.dart';

class FyiiScreen extends StatelessWidget {
  static const String routeName = "/Fyii";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("FYI"),
        backgroundColor: Colors.yellow[900],
      ),
      body: new Container(
        child: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              color: Colors.yellow[900],
              child: Text("URUTAN PENGGUNAAN SKINCARE\n\nPAGI atau SIANG \nFace Wash -> Toner -> Essence(opt) -> Serum -> Moisturizer(opt) -> Day Cream(opt)-> Sunscreen -> Lip Treatment.\n\nMALAM\nMakeup Remover -> Face Wash -> Exfoliating(opt) -> Toner -> Mask(opt) -> Serum -> Night Cream(opt) -> Spot Treatment(opt) -> Eye Cream(opt) -> Moisturizer -> Lip Treatment. ", style: TextStyle(color: Colors.white,fontSize: 17.0),),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              color: Colors.yellow[900],
              child: Text("APA ITU SERUM ?\n\nSerum adalah cairan yang diperkaya bahan aktif seperti antioksidan dan peptida yang mampu menembus ke dalam kulit untuk memelihara dan meremajakannya. Produk serum yang ringan dengan satu atau dua pompa cukup untuk diaplikasikan ke seluruh wajah.\n\nManfaatnya adalah Melawan tanda-tanda penuaan kulit seperti garis-garis halus dan kerutan, Membersihkan pori-pori kulit, Menambah cahaya dan kulit lebih bersinar, Membantu menjaga kulit tetap terhidrasi.", style: TextStyle(color: Colors.white, fontSize: 16.0),),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              color: Colors.yellow[900],
              child: Text("APA ITU MOISTURIZER ?\n\nMoisturizer adalah campuran dari berbagai bahan kimia (baik alami maupun sintetis) yang khusus didesain untuk membantu membuat lapisan luar kulit (yaitu epidermis) menjadi lebih lembut & terhidrasi dengan baik dengan mencegah penguapan air dari kulit.\n\nManfaanya adalah Menutrisi Kulit, Mencegah Timbulnya Berbagai Masalah Kulit, Membuat Kulit Wajah Awet Muda, Membantu Kulit untuk Berfungsi dengan Baik.", style: TextStyle(color: Colors.white, fontSize: 16.0),),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              color: Colors.yellow[900],
              child: Text("APA ITU TONER ?\n\nToner merupakan langkah kedua dari proses pembersihan. Manfaatnya, bila digunakan dengan benar, adalah dapat membantu menghilangkan kelebihan minyak dan sel kulit mati yang mungkin tersisa di wajah setelah mencuci muka.\n\nManfaatnya adalah Menyeimbangkan pH, Detoksifikasi, Menyusutkan dan mengencangkan pori, Mengatasi jerawat, Menghidrasi dan menutrisi kulit, Menambah lapisan proteksi pada kulit.", style: TextStyle(color: Colors.white, fontSize: 17.0),),
            ),
          ],
        ),
      ),
    );
  }
}