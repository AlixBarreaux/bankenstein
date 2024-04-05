import "package:bankenstein/views/home_view.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:go_router/go_router.dart";
import "package:bankenstein/components/hyperlink_open_browser.dart";

class LoginView extends StatelessWidget {
  static String name = "login";
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Center(
          child: FractionallySizedBox(
              widthFactor: 0.9,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset("assets/svgs/bankenstein_logo.svg"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Bankenstein",
                    style: TextStyle(fontSize: 40.0, color: Colors.deepPurple),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const HyperlinkOpenBrowser(
                      text: "Forgot password",
                      uri: "https://link-to-forgotten-password"),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.goNamed(HomeView.name);
                    },
                    child: const Text("Login"),
                  ),
                ],
              ))));
}
