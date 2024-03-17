import 'package:flutter/material.dart';
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
            const SizedBox(
              height: 8,
            ),
            const Text('Selamat datang di Politeknik Negeri Padang',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Limau Manis, Padang, Sumbar',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>const MIPage() ));
                },
              color: Colors.orange,
              textColor: Colors.white,
              child: const Text(
                'Manajemen Informatika',
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 12),
                ),



              ),
            const SizedBox(
              height: 8,
            ),

            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>const tekom() ));
              },
              color: Colors.orange,
              textColor: Colors.white,
              child: const Text(
                'Teknik Komputer',
                style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 12),
              ),

            ),


          ],
        ),
        ),
      ),
    );
  }
}
