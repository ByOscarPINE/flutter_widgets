import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body : SingleChildScrollView(
        child: Column(
          children: [
            SimpleCard(),
            ImageCard(),
            ImageCard(),
            ImageCard(),
            ProductCard(),
            FavoriteCard(),
            BuyProductCard()
          ],
        ),
      )
    );
  }
}

class BuyProductCard extends StatefulWidget {
  const BuyProductCard({super.key});

  @override
  State<BuyProductCard> createState() => _BuyProductCardState();
}

class _BuyProductCardState extends State<BuyProductCard> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              './lib/assets/images/lemon.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    'Limon para limonada',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  '\$67',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButton(onPressed: () => {}, child: const Text('Comprar')),
                Row(
                  children: [
                    IconButton(
                      onPressed: quantity > 1
                          ? () {
                              // setState(() {
                              //   quantity--;
                              // });
                            }
                          : null,
                      icon: const Icon(Icons.remove),
                      tooltip: 'Restar cantidad',
                    ),
                    Text(
                      '$quantity',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // setState(() {
                        //   quantity++;
                        // });
                      },
                      icon: const Icon(Icons.add),
                      tooltip: 'Sumar cantidad',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteCard extends StatefulWidget {
  const new({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(12),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(12), 
                  topRight: Radius.circular(12)
                ),
                child: Image.asset('./lib/assets/images/image.png')
              ),
              Align(
                alignment: AlignmentGeometry.centerEnd,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    )
                  ),
                  child: IconButton(
                    onPressed: () => {
                      setState(() {
                        favorite  = !favorite;
                        print(favorite);
                      })
                    },
                    icon: Icon(
                      !favorite ?
                      Icons.favorite_border : Icons.favorite,
                      color: Colors.pink,
                      size: 25,
                    )

                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text('Ardilla Wachito', 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      elevation: 5,
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25)
              ),
            child: Image.asset('./lib/assets/images/lemon.png',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Limon para limonada', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
                Text('\$67', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilledButton(
                onPressed: () => {}, 
                child: Text('Agregar al carrito')
              ),
            ),
          )
        ],
      )
    );
  }
}

class SimpleCard extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('A card is a sheet of material that serves as an entry point to more detailed information. Cards are surfaces that display content and actions on a single topic. They should be easy to scan for relevant and actionable information. Elements, like text and images, should be placed on them in a way that clearly indicates hierarchy.',
          textAlign: TextAlign.justify ,
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0oB26lpk1i4B9wy36MQHrIYS2GNyyff8O9vKbzT4VbwjRbSX2axgcf5o&s=10'),
          ),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text(
              'Conker',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Conker is a video game character and the protagonist of the Conker series, created by Rare. He first appeared in the 1997 Nintendo 64 game Diddy Kong Racing, and later starred in his own game, Conker\'s Bad Fur Day, released for the Nintendo 64 in 2001.',
            ),
          )
        ],
      ),
    );
  }
}