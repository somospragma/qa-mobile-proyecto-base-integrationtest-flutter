// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runner.dart';

// **************************************************************************
// GherkinSuiteTestGenerator
// **************************************************************************

class _CustomGherkinIntegrationTestRunner extends GherkinIntegrationTestRunner {
  _CustomGherkinIntegrationTestRunner({
    required FlutterTestConfiguration configuration,
    required StartAppFn appMainFunction,
    required Timeout scenarioExecutionTimeout,
    AppLifecyclePumpHandlerFn? appLifecyclePumpHandler,
    LiveTestWidgetsFlutterBindingFramePolicy? framePolicy,
  }) : super(
          configuration: configuration,
          appMainFunction: appMainFunction,
          scenarioExecutionTimeout: scenarioExecutionTimeout,
          appLifecyclePumpHandler: appLifecyclePumpHandler,
          framePolicy: framePolicy,
        );

  @override
  void onRun() {
    testFeature0();
  }

  void testFeature0() {
    runFeature(
      name: 'Counter Feature:',
      tags: <String>['@tagFeature'],
      run: () {
        runScenario(
          name: 'base counter',
          description: null,
          path:
              '/Users/johan.agudelo/proyecto-base-integrationtest-flutter/proyecto_base_flutter_integrationtest_bdd/./integration_test/features/counter.feature',
          tags: <String>['@tagFeature', '@Scenario1'],
          steps: [
            (
              TestDependencies dependencies,
              bool skip,
            ) async {
              return await runStep(
                name: 'When I press \'Increment\' button',
                multiLineStrings: <String>[],
                table: null,
                dependencies: dependencies,
                skip: skip,
              );
            },
            (
              TestDependencies dependencies,
              bool skip,
            ) async {
              return await runStep(
                name: 'Then I expect result \'1\'',
                multiLineStrings: <String>[],
                table: null,
                dependencies: dependencies,
                skip: skip,
              );
            },
          ],
          onBefore: () async => onBeforeRunFeature(
            name: 'Counter Feature',
            path:
                '/Users/johan.agudelo/proyecto-base-integrationtest-flutter/proyecto_base_flutter_integrationtest_bdd/./integration_test/features/counter.feature',
            description: null,
            tags: <String>['@tagFeature'],
          ),
          onAfter: () async => onAfterRunFeature(
            name: 'Counter Feature',
            path:
                '/Users/johan.agudelo/proyecto-base-integrationtest-flutter/proyecto_base_flutter_integrationtest_bdd/./integration_test/features/counter.feature',
            description: null,
            tags: <String>['@tagFeature'],
          ),
        );
      },
    );
  }
}

void executeTestSuite({
  required FlutterTestConfiguration configuration,
  required StartAppFn appMainFunction,
  Timeout scenarioExecutionTimeout = const Timeout(const Duration(minutes: 10)),
  AppLifecyclePumpHandlerFn? appLifecyclePumpHandler,
  LiveTestWidgetsFlutterBindingFramePolicy? framePolicy,
}) {
  _CustomGherkinIntegrationTestRunner(
    configuration: configuration,
    appMainFunction: appMainFunction,
    appLifecyclePumpHandler: appLifecyclePumpHandler,
    scenarioExecutionTimeout: scenarioExecutionTimeout,
    framePolicy: framePolicy,
  ).run();
}
