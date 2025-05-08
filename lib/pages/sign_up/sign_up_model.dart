import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for signup-email widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  String? _signupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter Email... is required';
    }

    if (!RegExp('^[a-zA-Z0-9._%+-]+@uri\\.edu\$').hasMatch(val)) {
      return 'Please enter a valid @uri.edu email address';
    }
    return null;
  }

  // State field(s) for TextFieldsignup-password widget.
  FocusNode? textFieldsignupPasswordFocusNode;
  TextEditingController? textFieldsignupPasswordTextController;
  late bool textFieldsignupPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldsignupPasswordTextControllerValidator;
  // State field(s) for signup-repeatpass widget.
  FocusNode? signupRepeatpassFocusNode;
  TextEditingController? signupRepeatpassTextController;
  late bool signupRepeatpassVisibility;
  String? Function(BuildContext, String?)?
      signupRepeatpassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signupEmailTextControllerValidator = _signupEmailTextControllerValidator;
    textFieldsignupPasswordVisibility = false;
    signupRepeatpassVisibility = false;
  }

  @override
  void dispose() {
    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    textFieldsignupPasswordFocusNode?.dispose();
    textFieldsignupPasswordTextController?.dispose();

    signupRepeatpassFocusNode?.dispose();
    signupRepeatpassTextController?.dispose();
  }
}
