import 'package:flutter/material.dart';
import 'package:flutter_delivery_udemy/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/delivery.png',
            width: 200,
            height: 200,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Correo Electronico'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Contraseña'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('INGRESAR'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¿No tienes cuenta?',
                style: TextStyle(color: MyColors.primaryColor),
              ),
              SizedBox(width: 7),
              Text(
                'Registrate',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: MyColors.primaryColor),
              )
            ],
          )
        ],
      ),
    ));
  }

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Delivery App'),
        ),
        body: Stack(children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Colors.lime),
          ),
          //Text('LOGIN')
          Container(
              margin: EdgeInsets.only(top: 60, left: 60), child: Text('LOGIN'))
        ]));
  }*/

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Delivery App'),
        ),
        body: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Hola como estas'),
            Text('Hello'),
            //SizedBox(width: 30),
            Text('Bien'),
          ],
        ));
  }*/

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Delivery App'),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Text('ESTE ES EL TEXTO NUMERO 1'),
            Container(
              //margin: EdgeInsets.all(20),
              //margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              margin: EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 0),
              child: TextField(
                  decoration: InputDecoration(hintText: 'Descripción')),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('CONTINUAR'),
            )
          ],
        ));
  }*/

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('HOLA MUNDO'),
    ));
  }*/

}
