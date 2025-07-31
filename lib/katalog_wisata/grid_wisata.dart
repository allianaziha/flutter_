import 'package:flutter/material.dart';
import 'package:allia_project/main_layout.dart';
import 'package:allia_project/katalog_wisata/list_wisata.dart';

class GridWisata extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      'title': 'Pantai',
      'image': 'https://ik.imagekit.io/tvlk/blog/2024/07/KVQ00j1N-shutterstock_2216666285.jpg?tr=q-70,c-at_max,w-500,h-300,dpr-2',
    },
    {
      'title': 'Pegunungan',
      'image': 'https://pict.sindonews.net/webp/480/pena/news/2024/09/17/156/1456851/10-gunung-terindah-di-indonesia-untuk-mendaki-nomor-2-punya-padang-edelweis-fso.webp',
    },
    {
      'title': 'Kota Tua',
      'image': 'https://ik.imagekit.io/tvlk/blog/2024/03/V6lLTQu2-image-5.png?tr=q-70,c-at_max,w-500,h-250,dpr-2',
    },
    {
      'title': 'Budaya',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCY3d7RWYkLQ9GYcD4ibMep6W9ryUFJRvyxNjfDCm0OKtdbNfrwV6_qy8f6vlKk9mEkwU&usqp=CAU',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Kategori Wisata',
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ListWisata(category: category['title']!),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      category['image']!,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        category['title']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              color: Colors.black54,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
