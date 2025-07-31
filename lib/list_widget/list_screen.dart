import 'package:allia_project/list_widget/detail_screen.dart';
import 'package:allia_project/main_layout.dart';
import 'package:flutter/material.dart';

class ArticleListScreen extends StatelessWidget {
   ArticleListScreen({super.key});

   final List<Map<String, String>> articles = [
    {
      'title' : 'Flutter Dasar',
      'description' : 'Belajar Dasar Flutter',
      'image' : 'https://picsum.photos/seed/picsum/200/300'
    },
    {
      'title' : 'State Management',
      'description' : 'Get X, Provider, Bloc Riverpod',
      'image' : 'https://picsum.photos/id/237/200/300'
    },
   ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Article', 
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArticleDetailScreen(data: article),
                ),
                );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6)
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                        image: DecorationImage(
                          image: NetworkImage(article['image']!),
                          fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(article['title']!,
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5),
                          Text(article['description']!,
                          style: const TextStyle(fontSize: 13)),
                        ],
                      ),
                    )
                    )
                ],
              ),
            ),
          );
        },
      ),
      );
  }
}