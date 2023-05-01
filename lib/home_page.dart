import 'package:flutter/material.dart';
import 'learn_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const Learn();
                },
              ),
            );
          },
          child: const Text('Learn Flutter')),
    );
  }
}
