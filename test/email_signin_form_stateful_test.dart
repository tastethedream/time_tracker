import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_form_stateful.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';


//mock class for authentication service
class MockAuth extends Mock implements AuthBase {}

void main() {
  // declare MockAuth variable
  MockAuth mockAuth;
  //set up mock auth service
  setUp(() {
    mockAuth = MockAuth();
  });

  Future<void> pumpEmailSignInForm(WidgetTester tester) async {
    await tester.pumpWidget(
      Provider<AuthBase>(
        create: (_) => mockAuth,
        child: MaterialApp(
          home: Scaffold(body: EmailSignInFormStateful()),
        ),
      ),
    );
  }

  /*
  group('sign in', () {
    testWidgets(
        'WHEN user does not enter email and password'
        'AND user taps sign in button'
        'THEN signInWithEmailAndPassword is not called',
        (WidgetTester tester) async {
    await pumpEmailSignInForm(tester);

    final signInButton = find.text('sign in');
    await tester.tap(signInButton);

    verifyNever(mockAuth.signInWithEmailAndPassword(any, any));
  });

    testWidgets(
        'WHEN user enters email and password'
        'AND user taps sign in button'''
        'THEN signInWithEmailAndPassword is called', (
        WidgetTester tester) async {
      await pumpEmailSignInForm(tester);

      final signInButton = find.text('Sign In');
      await tester.tap(signInButton);

      verifyNever(mockAuth.signInWithEmailAndPassword(any, any));
    });

  });
     */

  }
