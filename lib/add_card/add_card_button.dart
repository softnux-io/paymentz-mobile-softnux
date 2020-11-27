import 'package:flutter/material.dart';
import 'package:paymentez_mobile/generated/l10n.dart';

class AddCardButton extends StatelessWidget {
  final VoidCallback _onPressed;

  AddCardButton({Key key, VoidCallback onPressed})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      onPressed: _onPressed,
      child: Text(S.of(context).add_card_button),
    );
  }
}
