import "package:bankenstein/routes/router.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Fleet Manager",
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: const Color.fromARGB(31, 155, 155, 155)),
      routerConfig: AppRouter.router,
    );
  }
}
