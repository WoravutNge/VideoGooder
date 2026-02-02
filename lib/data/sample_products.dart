import '../models/product.dart';

List<Product> sampleProducts = [
  Product(
    id: '1',
    name: 'The Witcher 3: Wild Hunt',
    price: 29.99,
    description:
        'You are Geralt of Rivia, a professional monster slayer. The world is in chaos and you must find the Child of Prophecy.',
    isFavorite: false,
    imageUrl: 'https://picsum.photos/seed/witcher/400/300',
    developer: 'CD Projekt Red',
    publisher: 'CD Projekt',
    releaseDate: 'May 19, 2015',
    genre: ['RPG', 'Action', 'Open World'],
  ),
  Product(
    id: '2',
    name: 'Elden Ring',
    price: 59.99,
    description:
        'A new fantasy action RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring.',
    isFavorite: false,
    imageUrl: 'https://picsum.photos/seed/elden/400/300',
    developer: 'FromSoftware',
    publisher: 'Bandai Namco Entertainment',
    releaseDate: 'February 25, 2022',
    genre: ['RPG', 'Action', 'Souls-like', 'Open World'],
  ),
  Product(
    id: '3',
    name: 'Hades',
    price: 24.99,
    description:
        'Defy the god of the dead as you hack and slash out of the Underworld in this roguelike from the creators of Bastion.',
    isFavorite: false,
    imageUrl: 'https://picsum.photos/seed/hades/400/300',
    developer: 'Supergiant Games',
    publisher: 'Supergiant Games',
    releaseDate: 'September 17, 2020',
    genre: ['Roguelike', 'Action', 'Indie'],
  ),
];
