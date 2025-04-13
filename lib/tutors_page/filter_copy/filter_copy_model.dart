import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_copy_widget.dart' show FilterCopyWidget;
import 'package:flutter/material.dart';

class FilterCopyModel extends FlutterFlowModel<FilterCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Major widget.
  String? majorValue;
  FormFieldController<String>? majorValueController;
  // State field(s) for CourseNumber widget.
  FocusNode? courseNumberFocusNode;
  TextEditingController? courseNumberTextController;
  String? Function(BuildContext, String?)? courseNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNumberFocusNode?.dispose();
    courseNumberTextController?.dispose();
  }
}
