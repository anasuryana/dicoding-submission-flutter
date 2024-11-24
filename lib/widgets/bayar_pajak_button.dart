import 'package:flutter/material.dart';

class BayarPajakButton extends StatefulWidget {
  const BayarPajakButton({super.key});

  @override
  State<StatefulWidget> createState() => _BayarPajakButtonState();
}

class _BayarPajakButtonState extends State<BayarPajakButton> {
  bool _isPaymentScheduled = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: !_isPaymentScheduled
            ? () {
                setState(() {
                  _isPaymentScheduled = !_isPaymentScheduled;
                });
              }
            : null,
        child: Text(_isPaymentScheduled
            ? "Sudah dijadwalkan"
            : "Jadwalkan Bayar Pajak"));
  }
}
