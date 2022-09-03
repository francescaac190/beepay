import 'package:beepay/screens/RegisterPage.dart';
import 'package:beepay/widgets/reuseble.dart';
import 'package:flutter/material.dart';

class pruebaregistro extends StatefulWidget {
  const pruebaregistro({Key? key}) : super(key: key);

  @override
  State<pruebaregistro> createState() => _pruebaregistroState();
}

class _pruebaregistroState extends State<pruebaregistro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 18),
              Datos(Icons.person, "Nombre Completo"),
              SizedBox(height: 10),
              Datos(Icons.person, "Apellidos"), //cambiar
              SizedBox(height: 10),
              Datos(Icons.phone, "Número de teléfono"),
              SizedBox(height: 10),
              Datos(Icons.email, "Carnet de Identidad"), //cambiar
              SizedBox(height: 10),
              Datos(Icons.email, "Fecha de nacimiento"), //cambiar
              SizedBox(height: 10),
              Datos(Icons.email, "Sexo"), //cambiar
              SizedBox(height: 10),
              Datos(Icons.email, "Ciudad"), //cambiar
              SizedBox(height: 10),
              Datos(Icons.email, "Email"),
              SizedBox(height: 10),
              Datos(Icons.lock, "Contraseña"),
              SizedBox(height: 10),
              Datos(Icons.lock, "Confirmar contraseña"),
              SizedBox(height: 10),
              Row(children: [
                Material(
                  child: Checkbox(
                    activeColor: Colors.amber[400],
                    value: true, //agree,
                    onChanged: (value) {
                      // setState(() {
                      //   agree = value ?? false;
                      // });
                    },
                  ),
                ),
                Text(
                  'I have read and accept terms and conditions',
                  overflow: TextOverflow.ellipsis,
                )
              ]),
              BotonAmarilloReusable("Aceptar")
            ],
          ),
        ),
      ),
    );
  }
}
