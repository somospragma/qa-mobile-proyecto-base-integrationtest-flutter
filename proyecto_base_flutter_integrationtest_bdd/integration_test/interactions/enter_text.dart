import 'package:flutter_test/flutter_test.dart';

class Enter{
  Future<void> theText(WidgetTester actor, Finder finder, String text) async{
    actor.enterText(finder, text);
  }
}