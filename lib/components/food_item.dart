import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  const FoodItem(
      {Key? key,
      required this.itemTitle,
      required this.itemPrice,
      required this.imageURI})
      : super(key: key);
  final String itemTitle;
  final String itemPrice;
  final String imageURI;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).colorScheme.surfaceVariant,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemTitle,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "R\$ " + itemPrice,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Image(
              height: 90,
              width: 120,
              image: AssetImage(imageURI),
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
