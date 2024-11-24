import 'package:flutter/material.dart';
import 'package:narik/model/armada.dart';
import 'detail_web_page.dart';

class DetailScreen extends StatelessWidget {
  final Armada armada;
  const DetailScreen({super.key, required this.armada});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {}
      return DetailWebPage(armada: armada);
    });
  }
}
