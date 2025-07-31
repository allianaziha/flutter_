import 'package:allia_project/katalog_wisata/detail_wisata.dart';
import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class ListWisata extends StatelessWidget {
  final String category;
  ListWisata({super.key, required this.category});

  final Map<String, List<Map<String, String>>> wisataData = {
    'Pantai': [
      {
        'title': 'Pantai Parangtritis',
        'description': 'Pantai terkenal di Yogyakarta dengan nuansa mistis dan pemandangan tebing karang.',
        'image': 'https://picsum.photos/200/300?1',
      },
      {
        'title': 'Pantai Kuta',
        'description': 'Pantai ikonik di Bali dengan sunset dan ombaknya yang cocok untuk surfing.',
        'image': 'https://picsum.photos/200/300?2',
      },
      {
        'title': 'Pantai Tanjung Bira ',
        'description': 'Pantai populer di Sulawesi Selatan dengan pasir putih dan air laut yang jernih..',
        'image': 'https://picsum.photos/200/300?3',
      },
    ],
    'Pegunungan': [
      {
        'title': 'Gunung Bromo',
        'description': 'Gunung berapi aktif dengan panorama sunrise yang menakjubkan dan lautan pasir yang unik.',
        'image': 'https://picsum.photos/200/300?4',
      },
      {
        'title': 'Gunung Rinjani',
        'description': 'Gunung tertinggi kedua di Indonesia dengan danau kawah Segara Anak yang indah.',
        'image': 'https://picsum.photos/200/300?5',
      },
      {
        'title': 'Dieng Plateau',
        'description': 'Dataran tinggi berhawa sejuk dengan kawah, telaga warna, dan budaya lokal yang khas.',
        'image': 'https://picsum.photos/200/300?6',
      },
    ],
    'Kota Tua': [
      {
        'title': 'Kota Tua Jakarta',
        'description': 'Penuh bangunan bersejarah peninggalan Belanda dan museum-museum menarik.',
        'image': 'https://picsum.photos/200/300?7',
      },
      {
        'title': 'Kota Lama Semarang',
        'description': 'Dijuluki "Little Netherland" dengan arsitektur kolonial yang terawat.',
        'image': 'https://picsum.photos/200/300?8',
      },
      {
        'title': 'Kota Tua Ampenan',
        'description': 'Kawasan bersejarah di Lombok dengan nuansa kolonial dan budaya multietnis.',
        'image': 'https://picsum.photos/200/300?9',
      },
    ],
    'Budaya': [
      {
        'title': 'Candi Borobudur',
        'description': 'Candi Buddha terbesar di dunia dengan relief dan arsitektur megah.',
        'image': 'https://picsum.photos/200/300?10',
      },
      {
        'title': 'Keraton Yogyakarta',
        'description': 'Istana Kesultanan yang menjadi pusat budaya Jawa dan masih aktif hingga kini.',
        'image': 'https://picsum.photos/200/300?11',
      },
      {
        'title': 'Tana Toraja',
        'description': 'Wilayah adat yang dikenal dengan rumah Tongkonan dan upacara pemakaman Rambu Solo.',
        'image': 'https://picsum.photos/200/300?12',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final wisataList = wisataData[category] ?? [];

    return MainLayout(
      title: 'Wisata $category',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: wisataList.length,
              itemBuilder: (context, index) {
                final data = wisataList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) => DetailWisata(data: data),
                    ));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 6),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.horizontal(left: Radius.circular(15)),
                          child: Image.network(data['image']!, width: 100, fit: BoxFit.cover),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(data['title']!,
                                    style: const TextStyle(fontWeight: FontWeight.bold)),
                                const SizedBox(height: 5),
                                Text(data['description']!,
                                    style: const TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
