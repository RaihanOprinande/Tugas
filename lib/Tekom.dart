import 'package:flutter/material.dart';

class tekom extends StatelessWidget {
  const tekom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Teknin Komputer',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),//mengasih jarak
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Deskripsi',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: EdgeInsets.all(8.0), //tambah margin
                child: Text(
                  'Program Studi Manajemen Informatika (Kampus Kab.'
                      'Pelalawan) merupakan salah satu Program Studi Diluar'
                      'Kampus Utama (PSDKU) Politeknik Negeri Padang yang'
                      'memiliki sejarah dan keterkaitan erat dengan berdirinya'
                      'Akademi Komunitas di Daerah Pelalawan.'
                      'Berangkat dari SK Pendirian Akademi Komunitas Nomor'
                      ': 179/P/2013 Tanggal 26 September 2013, Program'
                      'Studi Diluar Domisili (PDD)'
                      'Kabupaten Pelalawan di awal berdirinya memiliki'
                      'Program Studi D2 Elektro Industri dan D2 Manajemen'
                      'Informatika.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                color: Colors.orange,
                textColor: Colors.white,
                child: const Text('back'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

