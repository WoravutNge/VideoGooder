import 'package:flutter/material.dart';
import '../models/product.dart';

const Color _detailBackgroundColor = Color(0xFF1B2233);

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    super.key,
    required this.product,
  });

  final Product product;

  static const Color _labelColor = Colors.white54;
  static const Color _valueColor = Colors.white;
  static const Color _chipBackground = Color(0xFF252D3D);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _detailBackgroundColor,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImage(),
            const SizedBox(height: 20),
            Text(
              product.name,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: _valueColor,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              product.price == 0
                  ? 'Free-to-play'
                  : '\$${product.price.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.amber,
                  ),
            ),
          const SizedBox(height: 16),
          _buildSection('Description', product.description),
          const SizedBox(height: 12),
          _buildSection('Developer', product.developer),
          _buildSection('Publisher', product.publisher),
          _buildSection('Release Date', product.releaseDate),
          const SizedBox(height: 8),
          _buildGenreSection(context),
        ],
      ),
    ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 220,
        width: double.infinity,
        color: _chipBackground,
        alignment: Alignment.center,
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => const Icon(
            Icons.image_not_supported,
            size: 48,
            color: _labelColor,
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: _labelColor,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontSize: 16, color: _valueColor),
          ),
        ],
      ),
    );
  }

  Widget _buildGenreSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Genre',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: _labelColor,
          ),
        ),
        const SizedBox(height: 6),
        Wrap(
          spacing: 8,
          runSpacing: 6,
          children: product.genre
              .map(
                (tag) => Chip(
                  label: Text(tag, style: const TextStyle(color: _valueColor)),
                  backgroundColor: _chipBackground,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
