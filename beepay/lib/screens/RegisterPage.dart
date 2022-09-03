import 'dart:ffi';
import 'dart:ui';

import 'package:beepay/widgets/InputDeco_design.dart';
import 'package:beepay/widgets/reuseble.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  double height = double.infinity;
  double width = double.infinity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                ImagenColmena(),
                GradienteColmena(),
                ImagenBEEPAY(),
              ],
            ),
            RegistrarWidget(),
          ],
        ),
      ),
    );
  }
}

class RegistrarWidget extends StatelessWidget {
  const RegistrarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      width: 350,
      decoration: Decoracion(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //SizedBox(height: 18),
                    Center(
                      child: Text(
                        'Ingrese sus datos',
                        style: TextStyle(fontFamily: 'Arlon', fontSize: 20),
                      ),
                    ),

                    SizedBox(height: 18),
                    Datos(Icons.person, "Nombres"),
                    SizedBox(height: 10),
                    Datos(Icons.person_outline, "Apellidos"),
                    SizedBox(height: 10),
                    Datos(Icons.phone, "Número de teléfono"),
                    SizedBox(height: 10),
                    Datos(Icons.call_to_action_rounded, "Carnet de Identidad"),
                    // SizedBox(height: 10),
                    // Datos(Icons.email, "Fecha de nacimiento"), //cambiar, no requerido
                    // SizedBox(height: 10),
                    // Datos(Icons.email, "Genero"), //cambiar, no requerido
                    // SizedBox(height: 10),
                    // Datos(Icons.email, "Ciudad"), //cambiar, no requerido
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
                        'Acepto los terminos y condiciones',
                        style: TextStyle(fontFamily: 'Arlon'),
                        overflow: TextOverflow.ellipsis,
                      )
                    ]),
                    BotonAmarilloReusable("Aceptar")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration Decoracion() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.8),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(3, 4), // changes position of shadow
        ),
      ],
    );
  }
}

class ImagenBEEPAY extends StatelessWidget {
  const ImagenBEEPAY({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        // gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        //   Colors.red,
        // ]),
        image: DecorationImage(
            opacity: 0.9,
            image: AssetImage('assets/Bee-pay-big.png'),
            fit: BoxFit.fitHeight),
      ),
    );
  }
}

class ImagenColmena extends StatelessWidget {
  const ImagenColmena({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        // gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        //   Colors.red,
        // ]),
        image: DecorationImage(
          image: AssetImage('assets/backgroudn2 - copia.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class GradienteColmena extends StatelessWidget {
  const GradienteColmena({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        // color: Colors.white,
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 1,
          colors: [
            Colors.white.withOpacity(0.0),
            Colors.white,
          ],
        ),
      ),
    );
  }
}

// class Registerpage extends StatefulWidget {
//   const Registerpage({Key? key}) : super(key: key);

//   @override
//   State<Registerpage> createState() => _RegisterpageState();
// }

// class _RegisterpageState extends State<Registerpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: Stack(
//             children: [
//               ImagenColmena(),
//               //GradienteColmena(),
//               ImagenBEEPAY(),
//               Expanded(
//                 child: SingleChildScrollView(
//                   physics: BouncingScrollPhysics(
//                       parent: AlwaysScrollableScrollPhysics()),
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.only(bottom: 15, left: 25, right: 25),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         SizedBox(height: 280),

//                         Text(
//                           'Ingrese sus datos',
//                           style: TextStyle(fontSize: 17),
//                         ),
//                         SizedBox(height: 10),
//                         Datos(Icons.person, "Nombre Completo"),
//                         SizedBox(height: 10),
//                         Datos(Icons.person, "Apellidos"), //cambiar
//                         SizedBox(height: 10),
//                         Datos(Icons.phone, "Número de teléfono"),
//                         SizedBox(height: 10),
//                         Datos(Icons.email, "Carnet de Identidad"), //cambiar
//                         SizedBox(height: 10),
//                         Datos(Icons.email, "Fecha de nacimiento"), //cambiar
//                         SizedBox(height: 10),
//                         Datos(Icons.email, "Sexo"), //cambiar
//                         SizedBox(height: 10),
//                         Datos(Icons.email, "Ciudad"), //cambiar
//                         SizedBox(height: 10),
//                         Datos(Icons.email, "Email"),
//                         SizedBox(height: 10),
//                         Datos(Icons.lock, "Contraseña"),
//                         SizedBox(height: 10),
//                         Datos(Icons.lock, "Confirmar contraseña"),
//                         SizedBox(height: 10),
//                         Row(children: [
//                           Material(
//                             child: Checkbox(
//                               activeColor: Colors.amber[500],
//                               value: true, //agree,
//                               onChanged: (value) {
//                                 // setState(() {
//                                 //   agree = value ?? false;
//                                 // });
//                               },
//                             ),
//                           ),
//                           const Text(
//                             'I have read and accept terms and conditions',
//                             overflow: TextOverflow.ellipsis,
//                           )
//                         ]),
//                         BotonAmarilloReusable("Aceptar")
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ImagenColmena extends StatelessWidget {
//   const ImagenColmena({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         // gradient: LinearGradient(begin: Alignment.topLeft, colors: [
//         //   Colors.red,
//         // ]),
//         image: DecorationImage(
//           image: AssetImage('assets/backgroudn2.png'),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

// class ImagenBEEPAY extends StatelessWidget {
//   const ImagenBEEPAY({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 230,
//       decoration: BoxDecoration(
//         // gradient: LinearGradient(begin: Alignment.topLeft, colors: [
//         //   Colors.red,
//         // ]),
//         image: DecorationImage(
//             opacity: 0.9,
//             image: AssetImage('assets/Bee-pay-big.png'),
//             fit: BoxFit.fitHeight),
//       ),
//     );
//   }
// }
