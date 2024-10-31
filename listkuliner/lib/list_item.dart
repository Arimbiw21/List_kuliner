import 'package:flutter/material.dart';
import 'makanan.dart'; // Pastikan ini diimpor
import 'detail_page.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;

  ListItem({required this.makanan});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(makanan: makanan),
          ),
        );
      },
      child: Card(
        child: ListTile(
          title: Text(makanan.name),
          subtitle: Text(makanan.description),
          leading: Image.asset(makanan.images.first), // Menampilkan gambar pertama
          trailing: Text('Rp ${makanan.price}'),
        ),
      ),
    );
  }
}
