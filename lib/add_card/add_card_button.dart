import 'package:flutter/material.dart';
import 'package:paymentez_mobile/generated/l10n.dart';

class AddCardButton extends StatelessWidget {
  final VoidCallback _onPressed;
  final String language;

  AddCardButton({Key key, VoidCallback onPressed, this.language})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      onPressed: _onPressed,
      child: Text(_getButtonLabel(language ?? 'en')),
    );
  }

  String _getButtonLabel(String language) {
    if (language.contains('pt')) {
      return 'Adicionar cartão';
    } else if (language.contains('es')) {
      return 'Agregar Tarjeta';
    } else {
      return 'Add Card';
    }
  }
}
