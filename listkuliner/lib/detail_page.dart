import 'package:flutter/material.dart';
import 'makanan.dart';

class DetailPage extends StatelessWidget {
  final Makanan makanan;

  DetailPage({required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(makanan.name),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menampilkan semua gambar makanan dengan spasi di antara gambar
            Column(
              children: makanan.images.map((image) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0), // Menambahkan spasi vertical
                  child: Image.asset(image, width: double.infinity, fit: BoxFit.cover),
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    makanan.name,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.orange),
                      SizedBox(width: 4),
                      Text(makanan.time),
                      SizedBox(width: 16),
                      Icon(Icons.local_fire_department, color: Colors.red),
                      SizedBox(width: 4),
                      Text("${makanan.calories} kkal"),
                      SizedBox(width: 16),
                      Icon(Icons.attach_money, color: Colors.green),
                      SizedBox(width: 4),
                      Text("Rp ${makanan.price}"),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(makanan.detailDescription),
                  SizedBox(height: 16),
                  Text("Bahan-bahan:", style: Theme.of(context).textTheme.headlineMedium), // Mengganti headline6
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: makanan.ingredients
                        .asMap()
                        .map((index, ingredient) {
                      return MapEntry(
                        index,
                        Column(
                          children: [
                            Image.asset('assets/bahan/${ingredient.toLowerCase()}.png', // Menampilkan gambar bahan
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover),
                            SizedBox(height: 4),
                            Text(ingredient),
                          ],
                        ),
                      );
                    })
                        .values
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
