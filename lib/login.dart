import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final user = TextEditingController();
  final password = TextEditingController();
  bool bandera = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.15,
                right: size.width * 0.15,
                top: 20,
                bottom: 20),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ],
                ),
                TextFormField(
                  controller: user,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    prefixIcon: const Icon(Icons.person, color: Colors.white),
                    labelText: 'Enter your username',
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    prefixIcon: const Icon(Icons.password, color: Colors.white),
                    labelText: 'Contrasena',
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Cette partie est commentée pour permettre la navigation vers la page Home
                      // sans vérification du nom d'utilisateur et du mot de passe
                      // if (user.text == "Lucas" && password.text == "GaiSensei_0709") {
                      //   Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => const Home(),
                      //   ));
                      // } else {
                      //   bandera = true;
                      // }
                    });

                    // Navigation vers la page Home sans vérification du nom d'utilisateur et du mot de passe
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Home(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF1152CC),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fixedSize: Size(size.width * 0.6, 45),
                  ),
                  child: const Text("INGRESAR",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                SizedBox(height: size.height * 0.02),
                bandera
                    ? const Text("Usuario o contrasena incorrecta",
                        style: TextStyle(color: Colors.red, fontSize: 15))
                    : Container(),
                Text(
                  'User: ${user.text} \n'
                  'Password: ${password.text}',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
