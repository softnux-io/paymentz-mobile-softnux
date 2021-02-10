class StringUtils {
  static getAddCardMessageLabel(String language) {
    if (language.contains('es')) {
      return "Nombre del titular";
    } else if (language.contains('pt')) {
      return "Nome do Titular do cartão";
    } else {
      return "Card Holder's Name";
    }
  }

  static getAddCardNumberLabel(String language) {
    if (language.contains('es')) {
      return "Número de tarjeta";
    } else if (language.contains('pt')) {
      return "Número do cartão";
    } else {
      return "Card Number";
    }
  }

  static getExpDateLabel(String language) {
    if (language.contains('es')) {
      return "Fecha de vto.";
    } else if (language.contains('pt')) {
      return "Data de validade";
    } else {
      return "Expiration date";
    }
  }


  static add_card_invalid_fiscal_number(String language) {
    if (language.contains('es')) {
      return "El documento de Identificación no es valido.";
    } else if (language.contains('pt')) {
      return "Documento de identificação inválido";
    } else {
      return "Your fiscal number is invalid.";
    }
  }

  static add_card_invalid_cvc(String language) {
    if (language.contains('es')) {
      return "El código de seguridad de la tarjeta no es válido.";
    } else if (language.contains('pt')) {
      return "Cod. Segurança Inválido.";
    } else {
      return "Your card's security code is invalid.";
    }
  }

  static add_card_invalid_number(String language) {
    if (language.contains('es')) {
      return "El número de tarjeta no es válido.";
    } else if (language.contains('pt')) {
      return "Número do cartão Inválido.";
    } else {
      return "Your card's number is invalid.";
    }
  }

  static add_card_empty_expiration_date(String language) {
    if (language.contains('es')) {
      return "Por favor ingresa la fecha de vencimiento de la tarjet";
    } else if (language.contains('pt')) {
      return "Insere a data de validade do cartão";
    } else {
      return "Please enter your card's expiration date";
    }
  }

}
