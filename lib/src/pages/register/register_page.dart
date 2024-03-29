import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_delivery_udemy/src/pages/register/register_controller.dart';

import 'package:flutter_delivery_udemy/src/utils/my_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterController _con = new RegisterController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Positioned(top: -80, left: -100, child: _circle()),
            Positioned(child: _textRegister(), top: 65, left: 27),
            Positioned(child: _IconBack(), top: 51, left: -5),
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 150),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    _imageUser(),
                    SizedBox(
                      height: 30,
                    ),
                    _textFieldEmail(),
                    _textFieldName(),
                    _textFieldLastName(),
                    _textFieldPhone(),
                    _textFieldPassword(),
                    _textFieldConfirmPassword(),
                    _buttonRegister()
                  ],
                ))),
          ],
        ),
      ),
    );
  }

  Widget _buttonRegister() {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: ElevatedButton(
          onPressed: _con.register,
          child: Text('REGISTRARSE'),
          style: ElevatedButton.styleFrom(
              primary: MyColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(vertical: 15)),
        ));
  }

  Widget _textFieldConfirmPassword() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        decoration: BoxDecoration(
            color: MyColors.primaryOpacityColor,
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          controller: _con.confirmPasswordController,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Confirmar Contraseña',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              prefixIcon:
                  Icon(Icons.lock_outline, color: MyColors.primaryColor)),
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

  Widget _textFieldPhone() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        decoration: BoxDecoration(
            color: MyColors.primaryOpacityColor,
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          controller: _con.phoneController,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              hintText: 'Telefono',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(Icons.phone, color: MyColors.primaryColor)),
        ));
  }

  Widget _textFieldLastName() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        decoration: BoxDecoration(
            color: MyColors.primaryOpacityColor,
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          controller: _con.lastnameController,
          decoration: InputDecoration(
              hintText: 'Apellido',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              prefixIcon:
                  Icon(Icons.person_outline, color: MyColors.primaryColor)),
        ));
  }

  Widget _textFieldName() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        decoration: BoxDecoration(
            color: MyColors.primaryOpacityColor,
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          controller: _con.nameController,
          decoration: InputDecoration(
              hintText: 'Nombre',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(Icons.person, color: MyColors.primaryColor)),
        ));
  }

  Widget _imageUser() {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/img/user_profile_2.png'),
      radius: 60,
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _IconBack() {
    return IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios, color: Colors.white));
  }

  Widget _textRegister() {
    return Text('REGISTRO',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'NimbusSans'));
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

  Widget _circle() {
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: MyColors.primaryColor),
    );
  }
}
