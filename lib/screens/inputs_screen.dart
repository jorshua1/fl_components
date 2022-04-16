import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    //* Creo un map que contendra los contenidos de los inputs ingresados en lo textfields
    //* mapa que recibe valores tipo string tanto key, value
    final Map<String, String> formValues = {
      'first_name': 'Avelardo',
      'last_name': 'Herandez',
      'email': 'jorshua321@gmail.com',
      'password': 'albedo',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: Center(
        child: SingleChildScrollView(
          // controller: controller,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInput(
                    hintText: 'Ingrese su nombre',
                    labelText: 'Nombre',
                    suffixIcon: Icons.person,
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInput(
                    hintText: 'Ingrese su apellido',
                    labelText: 'Apellido',
                    suffixIcon: Icons.people,
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInput(
                    hintText: 'Ingrese su correo',
                    labelText: 'Correo',
                    suffixIcon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInput(
                    hintText: 'Ingrese su contraseña',
                    labelText: 'Contraseña',
                    suffixIcon: Icons.key,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField<String>(
                      value: 'Admin',
                      items: const [
                        DropdownMenuItem(
                          value: 'Admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'Estudiante',
                          child: Text('Estudiante'),
                        ),
                        DropdownMenuItem(
                          value: 'Docente',
                          child: Text('Docente'),
                        ),
                        DropdownMenuItem(
                          value: 'Sapo',
                          child: Text('El propio hp'),
                        )
                      ],
                      onChanged: (value) {
                        print(value);
                        formValues['role'] = value ?? 'Admin';
                      }),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Guardar'),
                      onPressed: () {
                        //* escondo el teclado luego de oprimir el boton guardar
                        FocusScope.of(context).requestFocus(FocusNode());

                        //* dado a que currentState.validate devuelve un valor booleano podemos evaluar el formulario
                        //*?CurrentState por ahora puede devolver nulos (los campos de los inputs estan vacios al inicio) por ende le agregamos el simbolo ! al final indicandole al nullsafety de dart en que confie de que no dejaremos pasar valores nulos desde dichos campos
                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no valido');
                          return;
                        }
                        //* capturar valores de los inputs
                        print(formValues);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
