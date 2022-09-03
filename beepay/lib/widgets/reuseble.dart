import 'package:flutter/material.dart';

TextFormField Datos(IconData icons, String text) {
  return TextFormField(
    style: TextStyle(fontFamily: 'Arlon', fontSize: 16),
    onTap: () {},
    decoration: InputDecoration(
      hintText: text,
      prefixIcon: Icon(icons),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(color: Colors.grey.shade800, width: 1.5),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          color: Colors.amber,
          width: 1.5,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          color: Colors.black,
          width: 1.5,
        ),
      ),
    ),
  );
}

ButtonTheme BotonAmarilloReusable(String text) {
  return ButtonTheme(
    minWidth: 200.0,
    height: 30.0,
    child: RaisedButton(
        color: Colors.amberAccent,
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Arlon', fontSize: 19, color: Colors.grey.shade900),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
}
