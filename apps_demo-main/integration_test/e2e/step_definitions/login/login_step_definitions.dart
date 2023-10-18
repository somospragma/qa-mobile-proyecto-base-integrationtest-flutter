import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

import '../../interactions/enter_text.dart';
import '../../tasks/enter_login_task.dart';
import '../../user_interfaces/form_page.dart';
import '../../user_interfaces/login_page.dart';

StepDefinitionGeneric theUserEnterUsername(){
  return given1<String,FlutterWidgetTesterWorld>(
    'the user enter the username {string}', 
    (username, context) async{
      await EnterLoginTask(username, LoginPage.txtUsername).performAs(context.world.rawAppDriver);
  });
}

StepDefinitionGeneric theUserEnterPassword(){
  return and1<String,FlutterWidgetTesterWorld>(
    'the user enter the password {string}', 
    (password, context) async{
      await EnterLoginTask(password, LoginPage.txtPassword).performAs(context.world.rawAppDriver);
  });
}

StepDefinitionGeneric theUserTapsLoginButton(){
  return when<FlutterWidgetTesterWorld>(
    'the user taps the login button', 
    (context) async{
      final actor = context.world.rawAppDriver;
      await actor.pumpAndSettle();
      await actor.tap(LoginPage.btnLogin);
  });
}

StepDefinitionGeneric theUserWillSeeTheFormPage(){
  return then<FlutterWidgetTesterWorld>(
    'the user will see the form page', 
    (context) async{
      await context.world.rawAppDriver.pumpAndSettle();
      expect(FormPage.btnSendForm, findsOneWidget);
  });
}

StepDefinitionGeneric theUserWillSeeErrorMessage(){
  return then<FlutterWidgetTesterWorld>(
    'the user will see the error message', 
    (context) async{
      final actor = context.world.rawAppDriver;
      await actor.pumpAndSettle();
      expect(LoginPage.txtErrorLogin, findsOneWidget);
    });
}