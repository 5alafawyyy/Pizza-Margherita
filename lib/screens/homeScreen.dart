import 'package:flutter/material.dart';
import 'package:pizza_margherita/screens/contacts.dart';
import 'package:pizza_margherita/screens/pizza_2_screen.dart';
import 'package:pizza_margherita/screens/pizza_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Navigation'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.blueGrey[200],
                        padding: const EdgeInsets.all(12.0),
                        child: const Text('Stack: ')),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const PizzaScreen()),
                          ),
                        );
                      },
                      child: Text('Pizza one'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const Pizza2Screen()),
                          ),
                        );
                      },
                      child: Text('Pizza Two'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.blueGrey[200],
                        padding: const EdgeInsets.all(12.0),
                        child: const Text('ListView: ')),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const ContactsScreen()),
                          ),
                        );
                      },
                      child: const Text('Contacts'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
