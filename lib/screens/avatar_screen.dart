import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Martin Eliaz'),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 15),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.buenamusica.com/media/fotos/cantantes/biografia/martin-elias.jpg'),
              // child: Text('ME'),
              // backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://www.buenamusica.com/media/fotos/cantantes/biografia/martin-elias.jpg'),
        ),
      ),
    );
  }
}
