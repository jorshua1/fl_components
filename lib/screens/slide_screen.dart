import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _slideEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Slides && checks')),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                divisions: 10,
                value: _sliderValue,
                //* Agrego una condicion que me permite habilitar o deshabilitar el slider dependiendo del estado en el que se encuentre la variable _slideEnable como valor bool
                onChanged: _slideEnable
                    ? (value) {
                        setState(() {
                          _sliderValue = value;
                          print(value);
                        });
                      }
                    : null),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Usando listTile'),
              ],
            ),
            // Checkbox(
            //     value: _slideEnable,
            //     onChanged: (value) {
            //       setState(() {
            //         _slideEnable = value ?? true;
            //       });
            //     }),
            // Switch(
            //     value: _slideEnable,
            //     onChanged: (value) => setState(() {
            //           _slideEnable = value;
            //         })),
            //? Permite generar un checkbox que usa toda la columna como activable
            CheckboxListTile(
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                value: _slideEnable,
                onChanged: (value) => setState(() {
                      _slideEnable = value ?? true;
                    })),
            // ?Crea lo mismo que arriba pero en version switch
            SwitchListTile.adaptive(
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                value: _slideEnable,
                onChanged: (value) => setState(() {
                      _slideEnable = value;
                    })),
            // Descripcion de la aplicacion
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://www.picng.com/upload/batman/png_batman_74136.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
