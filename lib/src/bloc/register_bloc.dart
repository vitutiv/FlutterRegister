import 'dart:async';
import '../model/user.dart';
import 'package:rxdart/rxdart.dart';
import 'register_validation.dart';

class RegisterBloc with RegisterValidation {
  final _name = BehaviorSubject<String>();
  final _email = BehaviorSubject<String>();
  final _areaCode = BehaviorSubject<String>();
  final _phoneNumber = BehaviorSubject<String>();

  Stream<String> get name => _name.transform(validateNameField);
  Stream<String> get email => _email.transform(validateEmailField);
  Stream<String> get areaCode => _areaCode.transform(validateAreaCodeField);
  Stream<String> get phoneNumber =>
      _phoneNumber.transform(validadePhoneNumberField);

  Stream<bool> get submitButtonIsValid => Rx.combineLatest3(email, areaCode,
      phoneNumber, (emailValue, areaCodeValue, phoneNumberValue) => true);

  Function(String) get nameChanges => _name.sink.add;
  Function(String) get emailChanges => _email.sink.add;
  Function(String) get areaCodeChanges => _areaCode.sink.add;
  Function(String) get phoneNumberChanges => _phoneNumber.sink.add;

  submitRegistration() {
    final validName = _name.value;
    final validEmail = _email.value;
    final validAreaCode = _areaCode.value;
    final validPhoneNumber = _phoneNumber.value;
    final validPhone = '($validAreaCode) $validPhoneNumber';
    print('Name: $validName');
    print('Email: $validEmail');
    print('Telefone: ($validAreaCode) $validPhoneNumber');
    return User(validName, validEmail, validPhone);
  }

  dispose() {
    _name.close();
    _email.close();
    _areaCode.close();
    _phoneNumber.close();
  }
}
