class Car {
  final String name;
  final String image;
  final String price;

  Car({this.price, this.name, this.image});
}

class Cars {
  List<Car> _items = [
    Car(image: 'images/car1.jpg', name: 'Wagon'),
    Car(image: 'images/car2.jpg', name: 'Suv'),
    Car(image: 'images/car3.jpg', name: 'Sedan'),
    Car(image: 'images/car4.jpg', name: 'HatchBack'),
  ];

  List<Car> get items {
    return [..._items];
  }
}

class Brand {
  List<Car> _items = [
    Car(image: 'images/brand.png'),
    Car(image: 'images/brand1.png'),
    Car(image: 'images/brand2.png'),
    Car(image: 'images/brand3.png'),
    Car(image: 'images/brand4.png'),
    Car(image: 'images/brand5.png'),
  ];

  List<Car> get items {
    return [..._items];
  }
}

class Agencies {
  List<Car> _items = [
    Car(image: 'images/audi_a8.jpg', name: 'Audi A8', price: '12200 ك.د'),
    Car(image: 'images/audi_a7.jpg', name: 'Audi A8', price: '12222 ك.د'),
  ];

  List<Car> get items {
    return [..._items];
  }
}
