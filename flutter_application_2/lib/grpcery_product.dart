import 'package:flutter/material.dart';

class GroceryProduct {
  const GroceryProduct({
    required this.price,
    required this.name,
    required this.description,
    required this.image,
    required this.weight,
  });
  final double price;
  final String name;
  final String description;
  final String image;
  final String weight;
}

const grpceryProducts = <GroceryProduct>[
  GroceryProduct(
      price: 99.99,
      name: 'Aguacate',
      description:
          'Persea americana, llamado popularmente aguacate, ​​​ palto ​​ o aguacatero, ​ es una especie arbórea del género Persea perteneciente a la familia Lauraceae, cuyo fruto, el aguacate​​ o palta, ​​ es una baya comestible.​',
      image: 'assets/grocery_store/aguacate.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 21.57,
      name: 'Platano',
      description:
          'La banana, ​ conocido también como banano, plátano, ​ guineo maduro, guineo, cambur o gualele, es un fruto comestible, de varios tipos de grandes plantas herbáceas del género Musa.​',
      image: 'assets/grocery_store/platano.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 31.58,
      name: 'Mango',
      description:
          'El mango es una de las frutas de temporada más ricas, ya que sus propiedades y sabor lo hace idóneo como ingrediente en recetas de desayunos nutritivos.',
      image: 'assets/grocery_store/mango.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 19.99,
      name: 'Piña',
      description:
          'Ananas comosus es una especie de la familia de las bromeliáceas, nativa de América del Sur. Planta de escaso porte y con hojas duras y lanceoladas de hasta 1 m de largo, fructifica una vez al año produciendo un único fruto fragante y dulce, muy apreciado en gastronomía.',
      image: 'assets/grocery_store/piña.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 340.95,
      name: 'Cereza',
      description:
          'Los cerezos pertenecen a la familia de las rosáceas, del género prunus, como el albaricoque, la ciruela o el melocotón.Los cerezos pertenecen a la familia de las rosáceas, del género prunus, como el albaricoque, la ciruela o el melocotón.',
      image: 'assets/grocery_store/cereza.png',
      weight: '1000 g'),
  GroceryProduct(
      price: 36.91,
      name: 'Naranja',
      description:
          'La naranja es una fruta cítrica obtenida del naranjo dulce, del naranjo amargo y de naranjos de otras variedades o híbridos, de origen asiático.​',
      image: 'assets/grocery_store/naranja.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 16.55,
      name: 'Sandia',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/sandia.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 20.55,
      name: 'Cebolla Blanca',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/cebollablanca.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 18.56,
      name: 'Cebolla Morada',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/cebollamorada.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 12.55,
      name: 'Ejote',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/ejote.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 90.14,
      name: 'Fresa',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/fresa.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 12.41,
      name: 'Jicama',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/jicama.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 40.55,
      name: 'Jitomate',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/jitomate.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 60.12,
      name: 'Kiwi',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/kiwi.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 104.55,
      name: 'Limón',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/limones.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 34.55,
      name: 'Maracuya',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/maracuya.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 30.55,
      name: 'Papaya',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/papaya.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 15.55,
      name: 'Pepino',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/pepino.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 40.55,
      name: 'Pera',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/pera.jpg',
      weight: '1000 g'),
  GroceryProduct(
      price: 16.55,
      name: 'Zanahoria',
      description:
          'Citrullus lanatus, comúnmente llamada sandía, acendría, sindria, patilla, es una especie de la familia Cucurbitaceae. Es originaria de África con una gran presencia y difusión en todo el mundo.',
      image: 'assets/grocery_store/zanahoria.jpg',
      weight: '1000 g'),
];
