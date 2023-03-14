import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('aset/img/kapal_selam_1.jpg', scale: 0.1),
              Container(
                  padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text(
                    'Surabaya Submarine Monument',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today, size: 35,),
                      Text(
                          'Buka Setiap Hari',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time_outlined, size: 35,),
                      Text(
                        '08:00-16:00',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.attach_money, size: 35,),
                      Text(
                        'Rp. 10.000,-',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0, left: 10, right: 10),
                child: Text(
                  'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen. Monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952. Kapal selam ini pernah dilibatkan dalam Pertempuran Laut Aru untuk membebaskan Irian Barat dari pendudukan Belanda.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 16.0
                  ),),
              ),
             Container(
               padding: EdgeInsets.only(top: 30, bottom: 30),
               height: 200,
               child:  ListView(
                 scrollDirection: Axis.horizontal,
                   children: ListGambar()
               )
             )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> ListGambar(){
    var jumlahGambar = 1;
    List<Widget> gambar = [];
    while(jumlahGambar <= 5){
      gambar.add(Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('aset/img/kapal_selam_$jumlahGambar.jpg', scale: 0.1),
        ),
      ),);
      jumlahGambar++;
    }
    return gambar;
  }
}
