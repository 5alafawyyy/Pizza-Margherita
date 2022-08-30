import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gallery'),
      ),
      body: SizedBox(
        height: sizeY,
        width: sizeX,
        child: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          padding: const EdgeInsets.all(5),
          children: createGallery(50),
        ),
      ),
    );
  }

  List<Widget> createGallery(int numImages) {
    List<Widget> images = [];

    List<String> urls = [];
    urls.add(
      'https://images.freeimages.com/images/large-previews/446/retro-cars-4x-3-1449178.jpg',
    );
    urls.add(
      'https://images.freeimages.com/images/large-previews/56b/muscle-car-1450136.jpg',
    );
    urls.add(
      'https://images.freeimages.com/images/large-previews/776/old-car-1450675.jpg',
    );
    urls.add(
      'https://images.freeimages.com/images/large-previews/895/cars-1450686.jpg',
    );
    urls.add(
      'https://images.freeimages.com/images/large-previews/350/cuba-cars-1572173.jpg',
    );
    Widget image;
    int i = 0;
    while (i < numImages) {
      image = Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              urls[i % 5],
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
      images.add(image);
      i++;
    }
    return images;
  }
}
