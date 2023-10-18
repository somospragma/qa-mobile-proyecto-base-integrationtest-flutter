import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/src/widget_tester.dart';

import '../interactions/enter_text.dart';
import 'task.dart';

class EnterLoginTask implements Task{
  const EnterLoginTask(this.text, this.finder);
  final String text;
  final Finder finder;

  @override
  Future<void> performAs(WidgetTester actor) async {
    await actor.pumpAndSettle();
    //await Future.delayed(Duration(seconds: 2));
    await EnterText(text, actor).inWidget(finder);
  }

}