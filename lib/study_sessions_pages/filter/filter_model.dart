import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_widget.dart' show FilterWidget;
import 'package:flutter/material.dart';

class FilterModel extends FlutterFlowModel<FilterWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Major widget.
  String? majorValue;
  FormFieldController<String>? majorValueController;
  // State field(s) for CourseNumber widget.
  FocusNode? courseNumberFocusNode;
  TextEditingController? courseNumberTextController;
  String? Function(BuildContext, String?)? courseNumberTextControllerValidator;
  // State field(s) for Time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNumberFocusNode?.dispose();
    courseNumberTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();
  }
}
