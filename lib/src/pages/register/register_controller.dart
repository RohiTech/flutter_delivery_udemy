import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_delivery_udemy/src/provider/users_provider.dart';

import '../../models/response_api.dart';
import '../../models/user.dart';

class RegisterController {
  BuildContext? context;
  TextEditingController? emailController = new TextEditingController();
  TextEditingController? nameController = new TextEditingController();
  TextEditingController? lastnameController = new TextEditingController();
  TextEditingController? phoneController = new TextEditingController();
  TextEditingController? passwordController = new TextEditingController();
  TextEditingController? confirmPasswordController = new TextEditingController();

  UsersProvider? usersProvider = new UsersProvider();

  Future? init(BuildContext context) {
    this.context = context;
    usersProvider?.init(context);
  }

  void register() async {
    String? email = emailController?.text.trim();
    String? name = nameController?.text;
    String? lastname = lastnameController?.text;
    String? phone = phoneController?.text.trim();
    String? password = passwordController?.text.trim();
    String? confirmPassword = confirmPasswordController?.text.trim();

    User? user = new User(
        email: email,
        name: name,
        lastname: lastname,
        phone: phone,
        password: password);

    ResponseApi? responseApi = await usersProvider?.create(user);

    print('RESPUESTA: ${responseApi?.toJson()}');
    print(email);
    print(name);
    print(lastname);
    print(phone);
    print(password);
    print(confirmPassword);
  }
}
