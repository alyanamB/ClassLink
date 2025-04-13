import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MajorPf widget.
  String? majorPfValue;
  FormFieldController<String>? majorPfValueController;
  // State field(s) for AcademicStatusPF widget.
  String? academicStatusPFValue;
  FormFieldController<String>? academicStatusPFValueController;
  // State field(s) for YearPF widget.
  String? yearPFValue;
  FormFieldController<String>? yearPFValueController;
  // State field(s) for TutorCheckbox widget.
  bool? tutorCheckboxValue;
  // Stores action output result for [Backend Call - Create Document] action in UpdateAccountButton widget.
  TutorsRecord? tutorDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
