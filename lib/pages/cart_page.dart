import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        // Shopping Cart
        title: Text(
          "Shopping Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        // Back Arrow Icon
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),

        // Cart Icon
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 200,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT-ubrXKL9o-1Z0gMSpiU6UAeFaA6RJRUR2IxUcXt_TGZ8oN1J7AH9u6f9nV_htZcFiKn4Iruc0YMES6bX9aLaupYFScEbPXsg0tSR09f6zEEBZjBeiJDZ8ag",
                      height: 150,
                      width: 150,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "Wireless\nHeadphones",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 50),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: isFavorite
                                  ? Icon(Icons.favorite_border)
                                  : Icon(Icons.favorite, color: Colors.red),
                            ),
                          ],
                        ),

                        const SizedBox(height: 8),
                        Text(
                          "High quality sound with\nnoise cancellation",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 250,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Align(
                        alignment: AlignmentGeometry.topLeft,
                        child: Text(
                          "Order Summary",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Buy Now Button
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: const Color.fromARGB(255, 33, 13, 209),
                  ),
                  onPressed: () {},
                  label: Text(
                    "BUY NOW",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Remove Item Buttton
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_outlined,
                    color: const Color.fromARGB(255, 5, 64, 111),
                    size: 28,
                  ),
                  label: Text(
                    'REMOVE ITEM',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 5, 64, 111),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            //Clear Cart Buttton
            TextButton(
              onPressed: () {},
              child: Text(
                'Clear Cart',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 5, 64, 111),
                ),
              ),
            ),
            const SizedBox(height: 5),

            // Shopping Cart FloatingActionButton
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 33, 13, 209),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
