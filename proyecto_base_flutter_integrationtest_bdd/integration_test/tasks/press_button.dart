import 'package:flutter_test/flutter_test.dart';

class Press{
  Future<void> theButton(WidgetTester actor, Finder finder) async{
    await actor.pumpAndSettle();
    await actor.tap(finder);
  }
}