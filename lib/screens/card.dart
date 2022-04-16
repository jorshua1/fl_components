import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 20),
            CustomCardType2(
                textoUrl: 'Arquitectura Simetrica',
                imageUrl:
                    'https://images.unsplash.com/photo-1649789975946-7ba541045975?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
            SizedBox(height: 20),
            CustomCardType2(
                textoUrl: 'Gran hall de conocimiento',
                imageUrl:
                    'https://images.unsplash.com/photo-1649605475540-80c2c6cec21f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
            SizedBox(height: 20),
            CustomCardType2(
                textoUrl: null,
                imageUrl:
                    'https://images.unsplash.com/photo-1649351280599-689a415796f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
            SizedBox(height: 100),
          ],
        ));
  }
}
