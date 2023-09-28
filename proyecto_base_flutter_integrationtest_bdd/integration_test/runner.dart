import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';
import 'package:proyecto_base_flutter_integrationtest_bdd/main.dart' as app;
import 'configuration.dart';

part 'runner.g.dart';

@GherkinTestSuite(featurePaths: <String>['integration_test/features/**.feature'],)
void main() {
  executeTestSuite(
    configuration: gherkinTestConfiguration,
    appMainFunction: (World world) async => app.main(),
  );
}