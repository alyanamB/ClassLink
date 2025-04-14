import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_widget.dart' show FilterWidget;
import 'package:flutter/material.dart';

class FilterModel extends FlutterFlowModel<FilterWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MajorOptBox widget.
  String? majorOptBoxValue;
  FormFieldController<String>? majorOptBoxValueController;
  // State field(s) for CourseNumberOptBox widget.
  FocusNode? courseNumberOptBoxFocusNode;
  TextEditingController? courseNumberOptBoxTextController;
  String? Function(BuildContext, String?)?
      courseNumberOptBoxTextControllerValidator;
  // State field(s) for TimeOptBox widget.
  FocusNode? timeOptBoxFocusNode;
  TextEditingController? timeOptBoxTextController;
  String? Function(BuildContext, String?)? timeOptBoxTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNumberOptBoxFocusNode?.dispose();
    courseNumberOptBoxTextController?.dispose();

    timeOptBoxFocusNode?.dispose();
    timeOptBoxTextController?.dispose();
  }
}
