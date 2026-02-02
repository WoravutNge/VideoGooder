import 'package:flutter/material.dart';
import '../data/sample_products.dart';
import '../models/product.dart';
import '../widgets/app_header.dart';
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
          return _ProductListTile(product: product);
        },
      ),
    );
  }
}

class _ProductListTile extends StatelessWidget {
  const _ProductListTile({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    const white = Colors.white;
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: const Color(0xFF252D3D),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          product.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
        subtitle: Text(
          '\$${product.price.toStringAsFixed(2)} · ${product.genre.join(", ")}',
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(Icons.chevron_right, color: white),
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
      ),
    );
  }
}
