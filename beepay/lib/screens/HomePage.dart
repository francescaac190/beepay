import 'dart:ffi';

import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              ImagenColmena(),
              GradienteColmena(),
              ImagenBEEPAY(),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 330,
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.topCenter,
                      height: 440,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(3, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),
                            Text(
                              'Inicio de Sesión',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 23,
                                  color: Color.fromARGB(255, 49, 43, 43)),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 4,
                              width: 70,
                              color: Colors.amberAccent,
                            ),
                            SizedBox(height: 40),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.settings_cell),
                                  border: UnderlineInputBorder(),
                                  labelText: 'Número de celular',
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.key),
                                  border: UnderlineInputBorder(),
                                  labelText: 'Contraseña',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ButtonTheme(
                              minWidth: 250.0,
                              height: 30.0,
                              child: RaisedButton(
                                  color: Colors.amber[500],
                                  onPressed: () {},
                                  child: Text(
                                    "Ingresar",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: const Text('Ingresar'),
                            //   style: ElevatedButton.styleFrom(
                            //       elevation: 3,
                            //       primary: Colors.amber[500],
                            //       minimumSize: const Size(300, 50),
                            //       shape: RoundedRectangleBorder(
                            //           borderRadius: BorderRadius.circular(10))),
                            // ),

                            FlatButton(
                              height: 10,
                              onPressed: () {},
                              child: Text(
                                "¿Olvidaste tu contraseña?",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 49, 43, 43)),
                              ),
                            ),
                            Container(
                              height: 4,
                              width: 4,
                              color: Colors.amber[500],
                            ),

                            FlatButton(
                              height: 10,
                              onPressed: () {},
                              child: Text(
                                "¿Aún no tienes cuenta? Registrate",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 49, 43, 43)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
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
      height: 400,
      decoration: BoxDecoration(
        // gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        //   Colors.red,
        // ]),
        image: DecorationImage(
            image: AssetImage('assets/JUST BEE LOGO OK-03.png'),
            fit: BoxFit.fitHeight),
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
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.7,
          colors: [
            Colors.white.withOpacity(0.0),
            Colors.white,
          ],
        ),
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
      height: 400,
      decoration: BoxDecoration(
        // gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        //   Colors.red,
        // ]),
        image: DecorationImage(
            image: AssetImage('assets/backgroudn2.png'), fit: BoxFit.fitHeight),
      ),
    );
  }
}
