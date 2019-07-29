import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget{

  final estilosTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estilosSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          SafeArea(child: _crearImagen(),),
          SafeArea(child: _crearTitulo(),),
          SafeArea(child: _crearAcciones(),),
          SafeArea(child: _crearTexto(),),
          SafeArea(child: _crearTexto(),),
          SafeArea(child: _crearTexto(),),
          SafeArea(child: _crearTexto(),),
          SafeArea(child: _crearTexto(),),
        ],
        ),
      )
    );


  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        image: NetworkImage('https://images7.alphacoders.com/413/413755.jpg')),
    );
  }

  Widget _crearTitulo(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Galaxia de Andrómeda', style: estilosTitulo,),
                SizedBox(height: 10.0,),
                Text('También conocida como Galaxia Espiral M31, Messier 31 o NGC 224', style: estilosSubTitulo,)
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0),
          Text('41', style: TextStyle(fontSize: 20.0))
        ],
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
      ],
    );
  }

  Widget _crearTexto(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'La galaxia de Andrómeda, también conocida como Galaxia Espiral M31, Messier 31 o NGC 224, es una galaxia espiral con un diámetro de doscientos veinte mil años luz y de unos ciento cincuenta mil años luz entre los extremos de sus brazos. Es el objeto visible a simple vista más lejano de la Tierra.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}