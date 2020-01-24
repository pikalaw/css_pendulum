@TestOn('browser')
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';
import 'package:css_pendulum/app_component.dart';
import 'package:css_pendulum/app_component.template.dart' as ng;

void main() {
  final testBed =
      NgTestBed.forComponent<AppComponent>(ng.AppComponentNgFactory);
  NgTestFixture<AppComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('heading', () {
    expect(fixture.text, contains('CSS Pendulum'));
  });

  // Testing info: https://angulardart.dev/guide/testing
}