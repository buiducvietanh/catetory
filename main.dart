import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

////////////////////////////////////////////////////////////////////////////////
class Menu {
  final int id;
  final String title;
  final Image image;
  Menu({required this.id, required this.title, required this.image});
}

////////////////////////////////////////////////////////////////////////////////
class Product {
  final int id;
  final int quantity;
  final String title;
  final Image image;
  Product(
      {required this.id,
      required this.quantity,
      required this.title,
      required this.image});
}

////////////////////////////////////////////////////////////////////////////////
List<Menu> FAKE_CATEGORIES = [
  Menu(
    id: 0,
    title: 'Fashion',
    image: Image.asset('assets/image/fashion.png'),
  ),
  Menu(
    id: 1,
    title: 'Beauty',
    image: Image.asset('assets/image/beauty.png'),
  ),
  Menu(
    id: 2,
    title: 'Electronic',
    image: Image.asset('assets/image/electronics.png'),
  ),
  Menu(
    id: 3,
    title: 'Jewellery',
    image: Image.asset('assets/image/jewellery.png'),
  ),
  Menu(
    id: 4,
    title: 'Footwear',
    image: Image.asset('assets/image/footwear.png'),
  ),
  Menu(
    id: 5,
    title: 'Toys',
    image: Image.asset('assets/image/toys.png'),
  ),
  Menu(
    id: 6,
    title: 'Furniture',
    image: Image.asset('assets/image/furniture.png'),
  ),
  Menu(
    id: 7,
    title: 'Mobiles',
    image: Image.asset('assets/image/mobiles.png'),
  ),
];
////////////////////////////////////////////////////////////////////////////////

List<Product> FAKE_PRODUCT = [
  Product(
    id: 0,
    quantity: 89,
    title: 'laptops / PC',
    image: Image.asset('assets/image/laptop.jpg'),
  ),
  Product(
    id: 1,
    quantity: 105,
    title: 'Televisions',
    image: Image.asset('assets/image/teletisions.jpg'),
  ),
  Product(
    id: 2,
    quantity: 65,
    title: 'Dryers/Styling',
    image: Image.asset('assets/image/cryersjpg.jpg'),
  ),
  Product(
    id: 3,
    quantity: 77,
    title: 'Headphones',
    image: Image.asset('assets/image/headphones.jpg'),
  ),
  Product(
    id: 4,
    quantity: 211,
    title: 'Tablet',
    image: Image.asset('assets/image/tablet.jpg'),
  ),
  Product(
    id: 5,
    quantity: 68,
    title: 'Mobiles Covers',
    image: Image.asset('assets/image/mobiles.jpg'),
  ),
  Product(
    id: 6,
    quantity: 44,
    title: 'Printers',
    image: Image.asset('assets/image/printers.jpg'),
  ),
  Product(
    id: 7,
    quantity: 89,
    title: 'Thermometer',
    image: Image.asset('assets/image/thermometer.jpg'),
  ),
  Product(
    id: 8,
    quantity: 71,
    title: 'Powerbank',
    image: Image.asset('assets/image/powerbank.jpg'),
  ),
  Product(
    id: 9,
    quantity: 34,
    title: 'SmartWatches',
    image: Image.asset('assets/image/smartwatches.jpg'),
  ),
  Product(
    id: 10,
    quantity: 175,
    title: 'Ariconditioning',
    image: Image.asset('assets/image/ariconditioning.jpg'),
  ),
  Product(
    id: 11,
    quantity: 26,
    title: 'Washing',
    image: Image.asset('assets/image/washingmachine.jpg'),
  ),
];
////////////////////////////////////////////////////////////////////////////////

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        appBar: AppBar(
          elevation: 1,
          shadowColor: const Color.fromARGB(55, 190, 190, 190),
          backgroundColor: Colors.white,
          title: const Text(
            'Categories',
            style: TextStyle(
              color: Color.fromARGB(255, 34, 34, 34),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 34, 34, 34),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: Color.fromARGB(255, 34, 34, 34),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Color.fromARGB(255, 34, 34, 34),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  padding: const EdgeInsetsDirectional.only(
                      bottom: 0, start: 0, top: 5, end: 5),
                  itemCount: FAKE_CATEGORIES.length,
                  itemBuilder: (context, index) {
                    final item = FAKE_CATEGORIES[index];
                    return Card(
                      margin: const EdgeInsets.all(1),
                      shadowColor: const Color.fromARGB(55, 200, 200, 200),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            padding: const EdgeInsets.all(5),
                            child: item.image,
                          ),
                          Title(
                            color: const Color.fromARGB(255, 1, 1, 1),
                            child: Text(
                              item.title,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(5))
                        ],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 6),
                  color: Colors.white,
                  child: GridView.builder(
                    padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                    itemCount: FAKE_PRODUCT.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      final item = FAKE_PRODUCT[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 0),
                        shadowColor: const Color.fromARGB(55, 200, 200, 200),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        child: Column(
                          children: <Widget>[
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 0, bottom: 5),
                                  child: item.image,
                                ),
                                Positioned(
                                  width: 30,
                                  height: 30,
                                  top: 5,
                                  right: 5,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Colors.white,
                                    child: Text(
                                      item.quantity.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: 1.5,
                                        color: Colors.black54,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Title(
                                color: const Color.fromARGB(255, 1, 1, 1),
                                child: Text(
                                  item.title,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
