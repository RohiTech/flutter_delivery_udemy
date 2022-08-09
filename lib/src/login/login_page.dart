import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
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
  }

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
