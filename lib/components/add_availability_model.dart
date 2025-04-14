import '/flutter_flow/flutter_flow_util.dart';
import 'add_availability_widget.dart' show AddAvailabilityWidget;
import 'package:flutter/material.dart';

class AddAvailabilityModel extends FlutterFlowModel<AddAvailabilityWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DayTextInput widget.
  FocusNode? dayTextInputFocusNode;
  TextEditingController? dayTextInputTextController;
  String? Function(BuildContext, String?)? dayTextInputTextControllerValidator;
  // State field(s) for TimeInput widget.
  FocusNode? timeInputFocusNode;
  TextEditingController? timeInputTextController;
  String? Function(BuildContext, String?)? timeInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dayTextInputFocusNode?.dispose();
    dayTextInputTextController?.dispose();

    timeInputFocusNode?.dispose();
    timeInputTextController?.dispose();
  }
}
