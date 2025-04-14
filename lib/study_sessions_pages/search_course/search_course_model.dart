import '/flutter_flow/flutter_flow_util.dart';
import 'search_course_widget.dart' show SearchCourseWidget;
import 'package:flutter/material.dart';

class SearchCourseModel extends FlutterFlowModel<SearchCourseWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ssCourseInput widget.
  FocusNode? ssCourseInputFocusNode;
  TextEditingController? ssCourseInputTextController;
  String? Function(BuildContext, String?)? ssCourseInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ssCourseInputFocusNode?.dispose();
    ssCourseInputTextController?.dispose();
  }
}
