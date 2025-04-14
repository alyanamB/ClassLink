import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_copy_widget.dart' show FilterCopyWidget;
import 'package:flutter/material.dart';

class FilterCopyModel extends FlutterFlowModel<FilterCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MajortOpt widget.
  String? majortOptValue;
  FormFieldController<String>? majortOptValueController;
  // State field(s) for CourseNumbertOpt widget.
  FocusNode? courseNumbertOptFocusNode;
  TextEditingController? courseNumbertOptTextController;
  String? Function(BuildContext, String?)?
      courseNumbertOptTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNumbertOptFocusNode?.dispose();
    courseNumbertOptTextController?.dispose();
  }
}
