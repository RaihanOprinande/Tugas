import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:projects/ManajemenInformatika.dart';
import 'package:projects/Tekom.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'gambar/PPOOLLII.png',
              fit: BoxFit.contain,
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 8,
            ),
            Text('Selamat datang di Politeknik Negeri Padang',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Limau Manis, Padang, Sumbar',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>MIPage() ));
                },
              child: Text(
                'Manajemen Informatika',
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 12),
                ),
              color: Colors.orange,
              textColor: Colors.white,



              ),
            SizedBox(
              height: 8,
            ),

            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>tekom() ));
              },
              child: Text(
                'Teknik Komputer',
                style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 12),
              ),
              color: Colors.orange,
              textColor: Colors.white,

            ),


          ],
        ),
        ),
      ),
    );
  }
}
