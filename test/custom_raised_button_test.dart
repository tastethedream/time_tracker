import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracker_flutter_course/widgets/custom_raised_button.dart';

void main() {
  testWidgets('onPressed callback', (WidgetTester tester) async {
    var pressed = false;
    await tester.pumpWidget(MaterialApp(home: CustomRaisedButton(
      child: Text('tap me'),
      onPressed: () => pressed = true,
    )));
    // test if the widget contains a raised button
    final button = find.byType(RaisedButton);
    expect(button, findsOneWidget);
    expect(find.text('tap me'), findsOneWidget);
    await tester.tap(button);
    expect(pressed, true);
  });

}
