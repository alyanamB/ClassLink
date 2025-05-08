import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_session_page_widget.dart' show CreateSessionPageWidget;
import 'package:flutter/material.dart';

class CreateSessionPageModel extends FlutterFlowModel<CreateSessionPageWidget> {
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
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Exact Location... is required';
    }

    return null;
  }

  // State field(s) for seshTitle widget.
  FocusNode? seshTitleFocusNode;
  TextEditingController? seshTitleTextController;
  String? Function(BuildContext, String?)? seshTitleTextControllerValidator;
  String? _seshTitleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Session Title... is required';
    }

    return null;
  }

  // State field(s) for seshDesc widget.
  FocusNode? seshDescFocusNode;
  TextEditingController? seshDescTextController;
  String? Function(BuildContext, String?)? seshDescTextControllerValidator;
  String? _seshDescTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter well defined descrption of what is going to happen... is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? formValid;

  @override
  void initState(BuildContext context) {
    locationTextControllerValidator = _locationTextControllerValidator;
    seshTitleTextControllerValidator = _seshTitleTextControllerValidator;
    seshDescTextControllerValidator = _seshDescTextControllerValidator;
  }

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
