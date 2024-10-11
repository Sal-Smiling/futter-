class Productmodel {
  late int id;
  late String name;
  late String image;
  late String size;
  late double price;
  late int quantity;

  Productmodel({
    required this.id,
    required this.name,
    required this.image,
    required this.size,
    required this.price,
    required this.quantity,
  });
  List<Productmodel> get products => [
        Productmodel(
            id: 1001,
            name: 'Starbucks',
            image:
                'https://cdn.starbuckschilledcoffee.com/4aeffe/globalassets/evo/our-products/chilled-classics/chilled-cup/1_cc_cappuccino_r.png?width=480&height=600&rmode=max&format=webp',
            size: 'Medium',
            price: 15.9,
            quantity: 0),
        Productmodel(
            id: 1003,
            name: 'Bebida Láctea',
            image:
                'https://cdn.awsli.com.br/600x450/206/206579/produto/268168874/frappuccino-caramelo-starbucks-megustaveg-ne60mp14xr.jpg',
            size: 'Medium',
            price: 2.0,
            quantity: 0),
        Productmodel(
            id: 1003,
            name: 'Creamy',
            image:
                'https://images.freshop.com/00012000109508/fa3c53abde15f2a3cd9e985a145b9f69_large.png',
            size: 'Medium',
            price: 2.0,
            quantity: 0),
        Productmodel(
            id: 1003,
            name: 'Starbucks',
            image:
                'https://cdn.awsli.com.br/600x450/206/206579/produto/268168874/frappuccino-caramelo-starbucks-megustaveg-ne60mp14xr.jpg',
            size: 'Medium',
            price: 2.0,
            quantity: 0),
        Productmodel(
            id: 1003,
            name: 'Sweet ',
            image:
                'https://cdn.awsli.com.br/600x450/206/206579/produto/268168874/frappuccino-caramelo-starbucks-megustaveg-ne60mp14xr.jpg',
            size: 'Medium',
            price: 2.0,
            quantity: 0),
        Productmodel(
            id: 1003,
            name: ' Frappuccino',
            image:
                'https://images.freshop.com/00012000109508/fa3c53abde15f2a3cd9e985a145b9f69_large.png',
            size: 'Medium',
            price: 2.0,
            quantity: 0),
        Productmodel(
            id: 1003,
            name: ' Mocha ',
            image:
                'https://images.freshop.com/00012000109508/fa3c53abde15f2a3cd9e985a145b9f69_large.png',
            size: 'Medium',
            price: 2.0,
            quantity: 0),
        Productmodel(
            id: 1003,
            name: 'Sweet ',
            image:
                'https://cdn.awsli.com.br/600x450/206/206579/produto/268168874/frappuccino-caramelo-starbucks-megustaveg-ne60mp14xr.jpg',
            size: 'Medium',
            price: 2.0,
            quantity: 0),
      ];
}
