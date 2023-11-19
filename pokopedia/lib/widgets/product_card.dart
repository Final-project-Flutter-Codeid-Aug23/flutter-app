import '../widgets/subtitle.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
  final int id;
  final String name;
  final int price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: blueGreen(),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: GestureDetector(
                  onTap: () {
                    print("Navigate to Detail Product $id");
                  },
                  child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                ),
              ),
            ),
            Container(
              color: lightBlue(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Subtitle(
                    text: name,
                    fontSize: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Subtitle(
                        text: "Rp. $price",
                        fontSize: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("$name add to Cart");
                        },
                        child: Icon(
                          Icons.add_box_rounded,
                          color: red(),
                          size: 50,
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
