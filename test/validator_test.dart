// Test to check the String values of NonEmptyStringValidator found in validator.dart


import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracker_flutter_course/app/sign_in/validator.dart';

void main() {
 test('non empty String', () {
   final validator = NonEmptyStringValidator();
   expect(validator.isValid('test'), true);
});

 test('empty string', () {
   final validator = NonEmptyStringValidator();
   expect(validator.isValid(''), false);
 });

 test('null string', () {
   final validator = NonEmptyStringValidator();
   expect(validator.isValid(null), false);
 });
}