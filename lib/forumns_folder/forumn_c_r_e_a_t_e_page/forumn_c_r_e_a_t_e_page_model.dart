import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'forumn_c_r_e_a_t_e_page_widget.dart' show ForumnCREATEPageWidget;
import 'package:flutter/material.dart';

class ForumnCREATEPageModel extends FlutterFlowModel<ForumnCREATEPageWidget> {
  ///  Local state fields for this page.

  bool uniqueCourse = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for majorDropDownINPUT widget.
  String? majorDropDownINPUTValue;
  FormFieldController<String>? majorDropDownINPUTValueController;
  // State field(s) for CourseNumber_INPUT widget.
  FocusNode? courseNumberINPUTFocusNode;
  TextEditingController? courseNumberINPUTTextController;
  String? Function(BuildContext, String?)?
      courseNumberINPUTTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in CourseNumber_INPUT widget.
  ForumnsRecord? sameCourse;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ForumnsRecord? newForumn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNumberINPUTFocusNode?.dispose();
    courseNumberINPUTTextController?.dispose();
  }
}
