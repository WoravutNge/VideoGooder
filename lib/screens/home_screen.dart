import 'package:flutter/material.dart';
import '../data/sample_products.dart';
import '../widgets/app_header.dart';
import '../widgets/product_card.dart';
import '../widgets/product_detail_page.dart';

const Color _homeBackgroundColor = Color(0xFF1B2233);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _homeBackgroundColor,
      appBar: const AppHeader(
        title: 'VideoGooders',
        backgroundColor: _homeBackgroundColor,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: sampleProducts.length,
        itemBuilder: (context, index) {
          final product = sampleProducts[index];
          return ProductCard(
            product: product,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => Scaffold(
                    backgroundColor: _homeBackgroundColor,
                    appBar: const AppHeader(
                      title: 'VideoGooders',
                      backgroundColor: _homeBackgroundColor,
                      foregroundColor: Colors.white,
                    ),
                    body: ProductDetailPage(product: product),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
