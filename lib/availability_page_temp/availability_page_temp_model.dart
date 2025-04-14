import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'availability_page_temp_widget.dart' show AvailabilityPageTempWidget;
import 'package:flutter/material.dart';

class AvailabilityPageTempModel
    extends FlutterFlowModel<AvailabilityPageTempWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
