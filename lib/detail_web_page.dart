import 'package:narik/model/armada.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:narik/widgets/bayar_pajak_button.dart';

class DetailWebPage extends StatefulWidget {
  final Armada armada;
  const DetailWebPage({super.key, required this.armada});

  @override
  State<StatefulWidget> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollerController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: SingleChildScrollView(
          // controller: _scrollerController,
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 29),
        child: Center(
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 20,
            children: [
              Card(
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(widget.armada.imageAsset)),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              Card(
                  child: Column(
                children: [
                  Card(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            widget.armada.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 30, fontFamily: 'Staatliches'),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              widget.armada.description,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                  fontSize: 16, fontFamily: 'Oxygen'),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Scrollbar(
                            controller: _scrollerController,
                            child: Wrap(
                              children: [
                                const Icon(Icons.location_on_rounded),
                                const SizedBox(
                                  width: 8,
                                ),
                                // Tooltip(
                                //   message: 'Last Location',
                                //   child:
                                Text(
                                  widget.armada.lastLocation,
                                ),
                                // ),
                              ],
                            ),
                          ),
                          const BayarPajakButton()
                        ],
                      ),
                    ),
                  ),
                  const Text("Delivery history"),
                  Scrollbar(
                    controller: _scrollerController,
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: ListView(
                        controller: _scrollerController,
                        scrollDirection: Axis.horizontal,
                        children: widget.armada.lastTenDestionation.map((url) {
                          return Padding(
                            padding: const EdgeInsets.all(4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                color: Colors.lightBlue[100],
                                child: Text(url),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
          // ),
        ),
      )),
    );
  }
}
