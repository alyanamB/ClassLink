import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tutor_profile_copy_widget.dart' show TutorProfileCopyWidget;
import 'package:flutter/material.dart';

class TutorProfileCopyModel extends FlutterFlowModel<TutorProfileCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RemoteCheckbox widget.
  bool? remoteCheckboxValue;
  // State field(s) for hybridCheckbox widget.
  bool? hybridCheckboxValue;
  // State field(s) for In-PersonCheckbox widget.
  bool? inPersonCheckboxValue;
  // State field(s) for TeachingstyleTextField widget.
  FocusNode? teachingstyleTextFieldFocusNode;
  TextEditingController? teachingstyleTextFieldTextController;
  String? Function(BuildContext, String?)?
      teachingstyleTextFieldTextControllerValidator;
  // State field(s) for descriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  // State field(s) for RateTextField widget.
  FocusNode? rateTextFieldFocusNode;
  TextEditingController? rateTextFieldTextController;
  String? Function(BuildContext, String?)? rateTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    teachingstyleTextFieldFocusNode?.dispose();
    teachingstyleTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();

    rateTextFieldFocusNode?.dispose();
    rateTextFieldTextController?.dispose();
  }
}
