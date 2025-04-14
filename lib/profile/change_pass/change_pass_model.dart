import '/flutter_flow/flutter_flow_util.dart';
import 'change_pass_widget.dart' show ChangePassWidget;
import 'package:flutter/material.dart';

class ChangePassModel extends FlutterFlowModel<ChangePassWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for currentPassword widget.
  FocusNode? currentPasswordFocusNode;
  TextEditingController? currentPasswordTextController;
  late bool currentPasswordVisibility;
  String? Function(BuildContext, String?)?
      currentPasswordTextControllerValidator;
  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // State field(s) for repeatNewPass widget.
  FocusNode? repeatNewPassFocusNode;
  TextEditingController? repeatNewPassTextController;
  late bool repeatNewPassVisibility;
  String? Function(BuildContext, String?)? repeatNewPassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    currentPasswordVisibility = false;
    newPasswordVisibility = false;
    repeatNewPassVisibility = false;
  }

  @override
  void dispose() {
    currentPasswordFocusNode?.dispose();
    currentPasswordTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    repeatNewPassFocusNode?.dispose();
    repeatNewPassTextController?.dispose();
  }
}
