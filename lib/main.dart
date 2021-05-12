import 'package:flutter/material.dart';

void main() => runApp(CardApp());

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card de Imagenes by Robles'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_a_photo),
            onPressed:(){},
            ),
          ],//Fin de widget[]
        ),//Fin de appbar
        body: Container(
          child: ListView(
            children: <Widget>[
              _items('https://github.com/AlanRoblesS/Paisajes/blob/main/p3.jpg?raw=true','Paisaje 1','Lago cristalino'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/AlanRoblesS/Paisajes/blob/main/p11.jpg?raw=true','Paisaje 2','Montaña morada'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/AlanRoblesS/Paisajes/blob/main/p15.jpg?raw=true','Paisaje 3','Taj Mahal'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/AlanRoblesS/Paisajes/blob/main/p14.jpg?raw=true','Paisaje 4','Montañas'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/AlanRoblesS/Paisajes/blob/main/p6.jpg?raw=true','Paisaje 5','Arbol solitario'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/AlanRoblesS/Paisajes/blob/main/p7.jpg?raw=true','Paisaje 6','Cascada'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/AlanRoblesS/Paisajes/blob/main/p8.jpg?raw=true','Paisaje 7','Otoño'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/AlanRoblesS/Paisajes/blob/main/p10.jpg?raw=true','Paisaje 8','Atardecer'),//x item
              SizedBox(height:5.0,),
            ]//Fin de widget[]
          ),//Fin de listview
        ),//Fin de container
      ),//Fin de scaffold
    );//Fin de materialapp
  }//Fin del widget
  Widget _items(String url, String producto, String subtitulo) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.grey[850],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text(subtitulo,
                      style: TextStyle(color: Colors.grey, fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}//Fin de clase cardapp