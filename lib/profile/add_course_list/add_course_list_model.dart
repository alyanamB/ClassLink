import '/flutter_flow/flutter_flow_util.dart';
import 'add_course_list_widget.dart' show AddCourseListWidget;
import 'package:flutter/material.dart';

class AddCourseListModel extends FlutterFlowModel<AddCourseListWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CourseTextInput widget.
  FocusNode? courseTextInputFocusNode;
  TextEditingController? courseTextInputTextController;
  String? Function(BuildContext, String?)?
      courseTextInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseTextInputFocusNode?.dispose();
    courseTextInputTextController?.dispose();
  }
}
