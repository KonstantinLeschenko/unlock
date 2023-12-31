import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Error 404'),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text('home'),)
          ],
        ),
      ),
    );
  }
}