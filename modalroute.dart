import 'package:flutter/material.dart';

//startWidget
void main() => runApp(MyApp());

//generalWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}

//mainScreenWidget
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ModalParameter')),
      body: Center(
        child: ElevatedButton(
          child: Text('Öffne Details'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/details',
              arguments: 'Hallo vom Hauptscreen',
            );
          },
        ),
      ),
    );
  }
}

//detailScreenWidget
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String message = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
