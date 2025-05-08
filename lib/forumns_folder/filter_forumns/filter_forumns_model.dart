import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_forumns_widget.dart' show FilterForumnsWidget;
import 'package:flutter/material.dart';

class FilterForumnsModel extends FlutterFlowModel<FilterForumnsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MajorOptBox widget.
  String? majorOptBoxValue;
  FormFieldController<String>? majorOptBoxValueController;
  // State field(s) for CourseNumberOptBox widget.
  FocusNode? courseNumberOptBoxFocusNode;
  TextEditingController? courseNumberOptBoxTextController;
  String? Function(BuildContext, String?)?
      courseNumberOptBoxTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNumberOptBoxFocusNode?.dispose();
    courseNumberOptBoxTextController?.dispose();
  }
}
