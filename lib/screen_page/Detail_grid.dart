import 'package:flutter/material.dart';

class DetailGrid extends StatelessWidget {
  final Map<String, dynamic> movieDetails;

  const DetailGrid(this.movieDetails, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieDetails["judul"]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "gambar/${movieDetails["gambar"]}",
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Judul: ${movieDetails["judul"]}",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                "Harga: Rp. ${movieDetails["harga"]}",
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}