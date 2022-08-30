import 'package:flutter/material.dart';
import 'package:pizza_margherita/screens/pizza_2_screen.dart';

class PizzaScreen extends StatelessWidget {
  const PizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pizza Margherita'),
      ),
      body: Container(
        height: sizeY,
        width: sizeX,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pizza.webp'),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(30.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.white70,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Pizza Margherita',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: Text(
                        'This delicios pizza is made of Tomato, Mozzarella and Basil.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: Text(
                        'Seisouly you cant\'t miss it',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const Pizza2Screen()),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.deepOrange,
                    ),
                    fixedSize: MaterialStateProperty.all(
                      Size(sizeX, 30),
                    ),
                  ),
                  child: const Text(
                    'Order Now!',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
