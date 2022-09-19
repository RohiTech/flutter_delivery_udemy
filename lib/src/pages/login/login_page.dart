import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_delivery_udemy/src/pages/login/login_controller.dart';
import 'package:flutter_delivery_udemy/src/utils/my_colors.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //print('INIT STATE');

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      //print('SCHEDULER BINDING');
      _con.init(context);
    });
  }

  // String _name; // privada
  // String name; // publica

  @override
  Widget build(BuildContext context) {
    //print('METODO BUILD');

    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Stack(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Positioned(top: -80, left: -100, child: _circleLogin()),
          Positioned(child: _textLogin(), top: 60, left: 25),
          SingleChildScrollView(
              child: Column(children: [
            //_imageBanner(),
            _lottieAnimation(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _textDontHaveAccount()
          ]))
        ],
      ),
    ));
  }

  Widget _lottieAnimation() {
    return Container(
      margin: EdgeInsets.only(
          top: 150, bottom: MediaQuery.of(context).size.height * 0.17),
      child: Lottie.asset('assets/json/delivery.json',
          width: 350, height: 200, fit: BoxFit.fill),
    );
  }

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(color: MyColors.primaryColor),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: _con.goToRegisterPage,
          /*onTap: () {
            Navigator.pushNamed(context, 'register');
          },*/
          child: Text(
            'Registrate',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: MyColors.primaryColor),
          ),
        ),
      ],
    );
  }

  Widget _buttonLogin() {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: ElevatedButton(
          onPressed: _con.login,
          child: Text('INGRESAR'),
          style: ElevatedButton.styleFrom(
              primary: MyColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(vertical: 15)),
        ));
  }

  Widget _textFieldPassword() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        decoration: BoxDecoration(
            color: MyColors.primaryOpacityColor,
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          controller: _con.passwordController,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Contraseña',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor)),
        ));
  }

  Widget _textFieldEmail() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        decoration: BoxDecoration(
            color: MyColors.primaryOpacityColor,
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          controller: _con.emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'Correo Electronico',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(Icons.email, color: MyColors.primaryColor)),
        ));
  }

  Widget _textLogin() {
    return Text('LOGIN',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            fontFamily: 'NimbusSans'));
  }

  Widget _circleLogin() {
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: MyColors.primaryColor),
    );
  }

  Widget _imageBanner() {
    return Container(
        margin: EdgeInsets.only(
            top: 100, bottom: MediaQuery.of(context).size.height * 0.22),
        child: Image.asset(
          'assets/img/delivery.png',
          width: 200,
          height: 200,
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
