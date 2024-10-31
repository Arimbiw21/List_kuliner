class Makanan {
  final String name;
  final String description;
  final int price; // Menggunakan int untuk harga
  final List<String> images; // Menggunakan List<String> untuk gambar
  final String time;
  final int calories; // Menggunakan int untuk kalori
  final String detailDescription;
  final List<String> ingredients;

  Makanan({
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.time,
    required this.calories,
    required this.detailDescription,
    required this.ingredients,
  });
}

final List<Makanan> makananList = [
  Makanan(
    name: "Bubur",
    description: "Nasi lembek dengan bumbu lezat",
    price: 10000,
    images: [
      'assets/bubur.jpg',
      'assets/bubur1.jpg',
      'assets/bubur2.jpg',
      'assets/bubur3.jpg',
    ],
    time: "07.00-10.00",
    calories: 372,
    detailDescription: "Bubur adalah makanan dengan campuran bahan padat dan cair, dicampur dengan berbagai bahan tambahan.",
    ingredients: ["Daging", "Cabai", "Bawang", "Jahe", "Santan"],
  ),
  Makanan(
    name: "Pecel",
    description: "Salad sayuran dengan bumbu kacang",
    price: 15000,
    images: [
      'assets/pecel.jpg',
      'assets/pecel1.jpg',
      'assets/pecel2.jpg',
      'assets/pecel3.jpg',
    ],
    time: "08.00-12.00",
    calories: 220,
    detailDescription: "Pecel adalah salad sayuran yang disajikan dengan sambal kacang yang kaya rasa.",
    ingredients: ["Sayuran Segar", "Kacang", "Bawang", "Cabe", "Gula Merah"],
  ),
  Makanan(
    name: "Soto",
    description: "Sup beraroma rempah dengan daging",
    price: 20000,
    images: [
      'assets/soto.jpg',
      'assets/soto1.jpg',
      'assets/soto2.jpg',
      'assets/soto3.jpg',
    ],
    time: "07.00-15.00",
    calories: 300,
    detailDescription: "Soto adalah sup dengan daging dan rempah yang kaya rasa, disajikan dengan nasi.",
    ingredients: ["Daging", "Bawang", "daun bawang", "Santan", "Bumbu"],
  ),
];
