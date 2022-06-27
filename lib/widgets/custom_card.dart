import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(15),
        elevation: 8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: <Widget>[
              const Image(
                image: AssetImage('assets/example.jpg'),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const Text(
                        'Incididunt aliqua ipsum dolore ea amet ea magna aliqua dolor eiusmod aliquip aute amet.Irure do laborum eiusmod commodo non.'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {}, child: const Text('Cancel')),
                        TextButton(onPressed: () {}, child: const Text('Ok')),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
