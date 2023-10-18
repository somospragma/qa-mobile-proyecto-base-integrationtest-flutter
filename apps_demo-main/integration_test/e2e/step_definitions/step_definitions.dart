import 'package:gherkin/gherkin.dart';

import 'form/form_step_definitions.dart';
import 'login/login_step_definitions.dart';

Iterable<StepDefinitionGeneric> listStepDefinitions = [
  theUserEnterUsername(),
  theUserEnterPassword(),
  theUserTapsLoginButton(),
  theUserWillSeeTheFormPage(),
  theUserWillSeeErrorMessage(),
  theUserEnterTheName(),
  theUserEnterTheLastName(),
  theUserEnterTheMail(),
  theUserEnterThePhone(),
  theUserTapsTheSendButton(),
  theUserWillSeeTheMessage()
];