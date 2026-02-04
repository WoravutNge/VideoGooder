import '../models/product.dart';

List<Product> sampleProducts = [
  Product(
    id: '1',
    name: 'The Witcher 3: Wild Hunt',
    price: 29.99,
    description:
        'You are Geralt of Rivia, a professional monster slayer. The world is in chaos and you must find the Child of Prophecy.',
    isFavorite: false,
    imageUrl: 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/292030/ad9240e088f953a84aee814034c50a6a92bf4516/header.jpg?t=1768303991',
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
    imageUrl: 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1245620/header.jpg?t=1767883716',
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
    imageUrl: 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1145360/header.jpg?t=1758127023',
    developer: 'Supergiant Games',
    publisher: 'Supergiant Games',
    releaseDate: 'September 17, 2020',
    genre: ['Roguelike', 'Action', 'Indie'],
  ),
  Product(
    id: '4',
    name: 'Terraria',
    price: 9.99,
    description:
        'Dig, fight, explore, build! Nothing is impossible in this action-packed adventure game.',
    isFavorite: false,
    imageUrl: 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/105600/header.jpg?t=1769844435',
    developer: 'Re-Logic',
    publisher: 'Re-Logic',
    releaseDate: 'May 16, 2011',
    genre: ['Sandbox', 'Adventure', '2D'],
  ),
  Product(
    id: '5',
    name: 'Warframe',
    price: 0.00,
    description:
        'A cooperative free-to-play online action game set in an evolving sci-fi world.',
    isFavorite: false,
    imageUrl: 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/230410/64cb9deaae9055003fd76ba0f6df6b6fba38e808/header.jpg?t=1765508208',
    developer: 'Digital Extremes',
    publisher: 'Digital Extremes',
    releaseDate: 'March 25, 2013',
    genre: ['Action', 'Co-op', 'Shooter'],
  ),
];
