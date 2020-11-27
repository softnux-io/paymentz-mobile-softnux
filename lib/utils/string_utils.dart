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
}
