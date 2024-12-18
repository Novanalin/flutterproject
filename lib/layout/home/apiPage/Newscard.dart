import 'package:flutter/material.dart';
import 'package:flutterproject/layout/model/Getnews.dart'; // Replace `latihan` with your actual package name
import 'DetailnewsPage.dart';

class NewsCard extends StatelessWidget {
  final Getnews getnews;

  const NewsCard({Key? key, required this.getnews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailnewsPage(getnews: getnews),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getnews.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(getnews.body),
          ],
        ),
      ),
    );
  }
}
