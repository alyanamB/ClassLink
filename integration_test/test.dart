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

  testWidgets('US3 Backend Management', (WidgetTester tester) async {
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
    await tester.tap(find.byKey(const ValueKey('UNDEFINED')));
    await tester.pumpAndSettle(const Duration(milliseconds: 10000));
    await tester.enterText(find.byKey(const ValueKey('UNDEFINED')), 'CSC 212');
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(find.byKey(const ValueKey('UNDEFINED')),
        'I can help you understand algorithms efficiently.');
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(find.byKey(const ValueKey('UNDEFINED')), '10');
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('UNDEFINED')));
    await tester.pumpAndSettle(const Duration(milliseconds: 10000));
    expect(find.byKey(const ValueKey('UNDEFINED')), findsWidgets);
  });

  testWidgets('goldenPathTest', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: HomePageWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 300));
    await tester.tap(find.byKey(const ValueKey('Tab_wnge')));
    await tester.pumpAndSettle(const Duration(milliseconds: 300));
    await tester.tap(find.byKey(const ValueKey('Column_lfxx')));
    await tester.pumpAndSettle(const Duration(milliseconds: 300));
    await tester.tap(find.byKey(const ValueKey('attendButton_smsk')));
    await tester.pumpAndSettle(const Duration(milliseconds: 300));
    expect(find.text('Study Sessions'), findsOneWidget);
  });

  testWidgets('US1 Test', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: LoginPageWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 100));
    await tester.tap(find.byKey(const ValueKey('SignupButton_wu9o')));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 300),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.enterText(find.text('Enter Email...'), 'autotest123@uri.edu');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(
      const Duration(milliseconds: 50),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.enterText(find.text('Enter Password...'), 'password');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(
      const Duration(milliseconds: 50),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.enterText(find.text('Repeat Password...'), 'password');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pumpAndSettle(
      const Duration(milliseconds: 50),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.tap(find.text('SignUp'));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 400),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.enterText(
        find.byKey(const ValueKey('FullName_zn0k')), 'Tester Nam');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.tap(find.byKey(const ValueKey('Major_ihwd')));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 200),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.tap(find.text('Computer Science'));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 100),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.tap(find.byKey(const ValueKey('AcademicStatus_ph1r')));
    await tester.tap(find.text('Undergraduate'));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 100),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.tap(find.byKey(const ValueKey('Year_h1af')));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 150),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.tap(find.text('Freshman'));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 50),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    await tester.tap(find.byKey(const ValueKey('Button_bvm3')));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 300),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100),
    );
    expect(find.byKey(const ValueKey('Tab_wnge')), findsOneWidget);
  });

  testWidgets('US2 User Log In ', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.enterText(
        find.byKey(const ValueKey('EmailTextField_swaw')), 'giotest@email.com');
    await tester.enterText(
        find.byKey(const ValueKey('PasswordTextField_g61v')), 'password');
    await tester.tap(find.byKey(const ValueKey('LoginPage_dubz')));
    await tester.pumpAndSettle(const Duration(milliseconds: 6000));
    expect(find.byKey(const ValueKey('TabBar_cd46')), findsWidgets);
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
