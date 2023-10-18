import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

import '../../tasks/enter_login_task.dart';
import '../../user_interfaces/form_page.dart';

StepDefinitionGeneric theUserEnterTheName(){
  return given1<String, FlutterWidgetTesterWorld>(
    'the user enter the name {string}', 
    (name, context) async{
      await EnterLoginTask(name, FormPage.txtNombre).performAs(context.world.rawAppDriver);
    });
}

StepDefinitionGeneric theUserEnterTheLastName(){
  return given1<String, FlutterWidgetTesterWorld>(
    'the user enter the lastname {string}', 
    (lastname, context) async{
await EnterLoginTask(lastname, FormPage.txtApellido).performAs(context.world.rawAppDriver);      
    });
}

StepDefinitionGeneric theUserEnterTheMail(){
  return given1<String, FlutterWidgetTesterWorld>(
    'the user enter the mail {string}', 
    (mail, context) async{
      await EnterLoginTask(mail, FormPage.txtCorreo).performAs(context.world.rawAppDriver);      
    });
}

StepDefinitionGeneric theUserEnterThePhone(){
  return given1<String, FlutterWidgetTesterWorld>(
    'the user enter the phone {string}', 
    (phone, context) async{
      await EnterLoginTask(phone, FormPage.txtCelular).performAs(context.world.rawAppDriver);      
    });
}

StepDefinitionGeneric theUserTapsTheSendButton(){
  return when<FlutterWidgetTesterWorld>(
    'the user taps the send button', 
    (context) async{
      final actor = context.world.rawAppDriver;
      await actor.pumpAndSettle();
      await actor.tap(FormPage.btnSendForm);
    });
}

StepDefinitionGeneric theUserWillSeeTheMessage(){
  return given1<String, FlutterWidgetTesterWorld>(
    'the user will see the message {string}', 
    (message, context) async{
      final actor = context.world.rawAppDriver;
      await actor.pumpAndSettle();
      expect(find.text(message), findsOneWidget);
    });
}