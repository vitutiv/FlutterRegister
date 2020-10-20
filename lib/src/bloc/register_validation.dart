import 'dart:async';

class RegisterValidation {
  static bool isNumber(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  final validateNameField = StreamTransformer<String, String>.fromHandlers(
      handleData: (name, sink) => (name.length > 0)
          ? sink.add(name)
          : sink.addError('Por favor preencha seu nome.'));
  final validateEmailField = StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink) =>
          (email.contains('@')) && email.contains('.com')
              ? sink.add(email)
              : sink.addError('Por favor digite um e-mail válido.'));
  final validateAreaCodeField = StreamTransformer<String, String>.fromHandlers(
      handleData: (areaCode, sink) =>
          (areaCode.length == 2 && isNumber(areaCode))
              ? sink.add(areaCode)
              : sink.addError('Código de área inválido.'));
  final validadePhoneNumberField =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (phoneNumber, sink) =>
              (phoneNumber.length == 9 && isNumber(phoneNumber))
                  ? sink.add(phoneNumber)
                  : sink.addError('Formato de telefone inválido.'));
}
