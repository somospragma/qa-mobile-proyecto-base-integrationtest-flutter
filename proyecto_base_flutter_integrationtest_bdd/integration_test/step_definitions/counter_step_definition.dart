import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

import '../questions/validate.dart';
import '../tasks/press_button.dart';
import '../user_interfaces/counter_page.dart';

StepDefinitionGeneric whenIPressIncrementButton(){
  return when1<String,FlutterWidgetTesterWorld>(
    'I press {string} button', 
    (input1, context) async{
      await Press().theButton(context.world.rawAppDriver, CounterPage.incrementButton);
    });
}

StepDefinitionGeneric thenIExpectResult(){
  return then1<String, FlutterWidgetTesterWorld>('I expect result {string}', 
  (value, context) async {
    await Validate().oneWidget(context.world.rawAppDriver, find.text(value));
  });
}