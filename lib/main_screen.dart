import 'package:flutter/material.dart';
import 'widgets/armada_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          title: const Text(
            'Armada',
            style: TextStyle(
                fontFamily: 'Staatliches', fontSize: 32, color: Colors.white),
          ),
        ),
        body: const ArmadaList());
  }
}
