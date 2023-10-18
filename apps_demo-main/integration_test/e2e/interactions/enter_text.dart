import 'package:flutter_test/flutter_test.dart';

class EnterText{
  const EnterText(this.text, this.actor);
  final String text;
  final WidgetTester actor;

  Future<void> inWidget(Finder finder) async {
    await actor.tap(finder);
    await actor.enterText(finder, text);
  }
}