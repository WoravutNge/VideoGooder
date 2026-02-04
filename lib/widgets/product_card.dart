import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  final Product product;
  final VoidCallback onTap;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    const white = Colors.white;
    final product = widget.product;
    final priceText = product.price == 0
        ? 'Free-to-play'
        : '\$${product.price.toStringAsFixed(2)}';

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: const Color(0xFF252D3D),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: widget.onTap,
        child: SizedBox(
          height: 64,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    height: double.infinity,
                    color: Colors.black26,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Image.network(
                        product.imageUrl,
                        errorBuilder: (_, __, ___) => const Icon(
                          Icons.image_not_supported,
                          size: 20,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: white,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product.genre.join(', '),
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  priceText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: Icon(
                    widget.product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: widget.product.isFavorite
                        ? Colors.redAccent
                        : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.product.isFavorite = !widget.product.isFavorite;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

