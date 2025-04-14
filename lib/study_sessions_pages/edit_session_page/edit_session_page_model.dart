import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_session_page_widget.dart' show EditSessionPageWidget;
import 'package:flutter/material.dart';

class EditSessionPageModel extends FlutterFlowModel<EditSessionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for seshTitle widget.
  FocusNode? seshTitleFocusNode;
  TextEditingController? seshTitleTextController;
  String? Function(BuildContext, String?)? seshTitleTextControllerValidator;
  // State field(s) for seshDesc widget.
  FocusNode? seshDescFocusNode;
  TextEditingController? seshDescTextController;
  String? Function(BuildContext, String?)? seshDescTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    locationFocusNode?.dispose();
    locationTextController?.dispose();

    seshTitleFocusNode?.dispose();
    seshTitleTextController?.dispose();

    seshDescFocusNode?.dispose();
    seshDescTextController?.dispose();
  }
}
