import 'package:flutter/material.dart';


customSnackbar( BuildContext context, String titulo, Color color, Color colorText, int duracion ) {

  return SnackBar(
    duration: Duration(milliseconds: duracion),
    content: Text(titulo, style: TextStyle(color: colorText),maxLines: 3, ),
    backgroundColor: color,
    behavior: SnackBarBehavior.floating,
    );



}