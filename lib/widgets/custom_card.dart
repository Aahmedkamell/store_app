import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withValues(alpha: .2),
                spreadRadius: 0,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HandBag',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$255',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Icon(Icons.favorite, color: Colors.red, size: 30),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 8,
          bottom: 70,
          child: Image.network(
            'https://images.squarespace-cdn.com/content/v1/5d2c8d4a4ac6c80001c9d1bf/1586268240059-AAYU51QQ0YFY3JHXG973/accesorios-ecommerce-complementos-fotografiadeproducto-bolsos-mujer-mariaalbertin-5.jpg?format=1000w',
            height: 100,
          ),
        ),
      ],
    );
  }
}
