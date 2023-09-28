import 'package:flutter_test/flutter_test.dart';

class Validate{
  Future<void> oneWidget(WidgetTester actor, Finder finder) async{
    await actor.pumpAndSettle();
    expect(finder, findsOneWidget);
  }
}