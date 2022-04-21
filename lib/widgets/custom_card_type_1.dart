import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: ListTile(
            leading: Icon(
              Icons.book,
              color: AppTheme.primary,
            ),
            title: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text('¿Y aqui que deberia poner?'),
            ),
            isThreeLine: true,
            subtitle: Text(
                'Estoy insertando mas datos en la card para que se vea mas amplio el contenido y su tamaño, ya no se que mas escribir, hola diosito otra vez soy yo'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('cancelar'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  child: const Text('ok')),
              ElevatedButton(
                onPressed: () {},
                child: const Text('prueba'),
                style: ElevatedButton.styleFrom(primary: Colors.amber),
              )
            ],
          ),
        )
      ]),
    );
  }
}
