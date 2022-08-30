import 'package:flutter/material.dart';

class Pizza2Screen extends StatelessWidget {
  const Pizza2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pizza'),
      ),
      body: SizedBox(
        height: sizeY,
        width: sizeX,
        child: Stack(
          children: showPizzaLayout(sizeX, sizeY),
        ),
      ),
    );
  }

  List<Widget> showPizzaLayout(
    double sizeX,
    double sizeY,
  ) {
    List<Widget> layoutChildren = <Widget>[];

    // Background Image
    Container backGround = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.freeimages.com/images/large-previews/7ed/pizza-1327877.jpg',
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
    layoutChildren.add(backGround);

    // Card
    Positioned pizzaCard = Positioned(
      top: sizeY / 20,
      left: sizeX / 20,
      // right: sizeX / 20,
      child: Card(
        elevation: 12,
        color: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
        ),
        child: Column(
          children: [
            Text(
              'Pizza Margherita',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange[800],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                12.0,
              ),
              child: Text(
                'This delicios pizza is made of Tomato,\n Mozzarella and Basil. \n\n Seisouly you cant\'t miss it',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    layoutChildren.add(pizzaCard);

    // button
    Positioned pizzaButton = Positioned(
      bottom: sizeY / 20,
      left: sizeX / 20,
      width: sizeX - sizeX / 10,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          primary: Colors.orange[900],
        ),
        child: const Text(
          'Order Now',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
    layoutChildren.add(pizzaButton);

    return layoutChildren;
  }
}
