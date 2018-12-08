
import 'package:blog_app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Clicking a listTile open route', (WidgetTester tester) async {
    await tester.pumpWidget(BlogApp('This is testing'));

    // expect(find.byIcon(Icons.launch), findsNothing);

    await tester.tap(find.byType(ListTile).first);
    await tester.pump();

    // expect(find.byIcon(Icons.launch), findsOneWidget);
    expect(find.byWidget(Text('AngularJS is What?')), findsOneWidget);
  });
}