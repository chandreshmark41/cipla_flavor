import 'package:cipla/flutter_flow/flutter_flow_widgets.dart';
import 'package:cipla/user_dashboard_copy_copy/user_dashboard_copy_copy_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:cipla/main.dart' as app;
import "package:flutter_driver/driver_extension.dart";
import 'package:firebase_core/firebase_core.dart';

void main() {
  group("mlk", () {
    // final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    // if (binding is LiveTestWidgetsFlutterBinding) {
    //   binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
    // }

    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets("description", (WidgetTester tester) async {
      await Firebase.initializeApp();
      app.main();
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).first, "divyarania@sidgs.com");
      await tester.enterText(find.byType(TextFormField).last, "123456");
      await tester.pumpAndSettle();
      await tester.tap(find.byType(FFButtonWidget).first);
      await tester.pumpAndSettle();

     expect(find.byType(UserDashboardCopyCopyWidget), findsOneWidget);
      await tester.pumpAndSettle();
      //expect(true, false);
    });
  });
}
