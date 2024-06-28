import 'package:ferrecom_dynamo/components/my_button.dart';
import 'package:ferrecom_dynamo/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    super.key,
    this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo de la app
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),
            // slogan

            Text(
              "Crea tu cuenta en minutos :D",
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),
            // campo de texto para correo
            MyTextfield(
                controller: emailController,
                hintText: "Email",
                obscureText: false),
            const SizedBox(height: 15),
            // campo de texto para contraseña
            MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            const SizedBox(height: 15),

            // campo de texto para confirmar contraseña
            MyTextfield(
                controller: confirmPasswordController,
                hintText: "Password",
                obscureText: true),
            const SizedBox(height: 25),

            // boton de inicio de sesión
            MyButton(
              text: "Registrarme",
              onTap: () {},
            ),
            const SizedBox(height: 25),

            // ¿Ya tienes cuenta? Inicia sesión
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "¿Ya tienes cuenta?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Inicia sesión",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
