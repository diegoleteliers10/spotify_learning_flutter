import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  //se crea un boton el cual recibe como parametros onPressed, title y height
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const BasicAppButton(
      {required this.onPressed,
      required this.title,
      required this.height,
      super.key}); //constructor, donde se definen los atributos de la clase

  @override //se sobreescribe el metodo build, para crear el boton
  Widget build(BuildContext context) {
    //se crea el boton, y el BuildContext sirve para contexto del boton
    return ElevatedButton(
      //se retorna el boton
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80),
      ),
      // se define el estilo del texto dentro del boton, para eso esta child
      child: Text(
        title, 
        style: const TextStyle(color: Colors.white)
      ),
    );
  }
}
