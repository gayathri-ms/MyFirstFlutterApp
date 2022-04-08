import '/src/detail.dart';
import '/src/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Home());
      case "/second":
        if (args != null) {
          final argx = args as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (_) => Detail(argx),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("Error Page"),
          ),
          body: const Center(child: Text("Error Page")));
    });
  }
}
