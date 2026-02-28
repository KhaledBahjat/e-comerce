import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 190,
          height: 130,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 3), 
              ),
            ]
          ),
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Air Jordan 1 '),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price: 150\$'),
                     IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
     
     Positioned(
      top: -40,
      right: 20,
      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxq-Hc0hC9NYMqVyc7CzWaPRfQfRhcyeCpfw&s',height: 80,width: 100,))
     
      ],
    );
  }
}