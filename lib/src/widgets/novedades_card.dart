import 'package:flutter/material.dart';

class NewsCardList extends StatelessWidget {
  const NewsCardList({super.key});

  final List<Map<String, String>> newsItems = const [
    {
      'title': 'Zumba',
      'image': 'https://placehold.co/282x183',
    },
    {
      'title': 'Personalizado',
      'image': 'https://placehold.co/284x184',
    },
    {
      'title': 'Funcional',
      'image': 'https://placehold.co/284x185',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: newsItems.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = newsItems[index];
          return NewsCard(title: item['title']!, imageUrl: item['image']!);
        },
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const NewsCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 183,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black87, Colors.transparent],
          ),
        ),
        padding: const EdgeInsets.all(16),
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Changa',
            fontWeight: FontWeight.w600,
            shadows: [
              Shadow(
                offset: Offset(0, 4),
                blurRadius: 4,
                color: Colors.black26,
              )
            ],
          ),
        ),
      ),
    );
  }
}
