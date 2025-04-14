import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:class_link/flutter_flow/flutter_flow_drop_down.dart';
import 'package:class_link/flutter_flow/flutter_flow_icon_button.dart';
import 'package:class_link/flutter_flow/flutter_flow_widgets.dart';
import 'package:class_link/flutter_flow/flutter_flow_theme.dart';
import 'package:class_link/index.dart';
import 'package:class_link/main.dart';
import 'package:class_link/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:class_link/backend/firebase/firebase_config.dart';
import 'package:class_link/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('Test Tutor Data Saved', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'test09@uri.edu', password: 'test09');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: ProfileTabWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('LogoutButton_aumg')));
    await tester.pumpAndSettle(const Duration(milliseconds: 10000));
    await tester.enterText(
        find.byKey(const ValueKey('CourseTextField_enob')), 'CSC 212');
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('descriptionTextField_15s7')),
        'I can help you understand algorithms efficiently.');
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('RateTextField_ng69')), '10');
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('updateTutorButton_i9a5')));
    await tester.pumpAndSettle(const Duration(milliseconds: 10000));
    expect(find.byKey(const ValueKey('LogoutButton_u6sn')), findsWidgets);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
