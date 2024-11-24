import 'package:narik/detail_screen.dart';
import 'package:narik/model/armada.dart';
import 'package:flutter/material.dart';

class ArmadaList extends StatelessWidget {
  const ArmadaList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Armada armada = armadaList[index];
        return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(armada: armada);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(armada.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            armada.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(children: [
                            const Icon(Icons.call),
                            const Text("  "),
                            SelectableText(
                              armada.contactNumber,
                              onTap: () => {},
                            )
                          ])
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
      itemCount: armadaList.length,
    );
  }
}
