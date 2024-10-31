import 'package:flutter/material.dart';
import 'makanan.dart';
import 'list_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Makanan'),
      ),
      body: ListView.builder(
        itemCount: makananList.length,
        itemBuilder: (context, index) {
          return ListItem(makanan: makananList[index]);
        },
      ),
    );
  }
}
