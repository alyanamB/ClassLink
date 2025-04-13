import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'tutor_profile_widget.dart' show TutorProfileWidget;
import 'package:flutter/material.dart';

class TutorProfileModel extends FlutterFlowModel<TutorProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CourseTextField widget.
  FocusNode? courseTextFieldFocusNode;
  TextEditingController? courseTextFieldTextController;
  String? Function(BuildContext, String?)?
      courseTextFieldTextControllerValidator;
  // State field(s) for TeachingStyleDropDown widget.
  String? teachingStyleDropDownValue;
  FormFieldController<String>? teachingStyleDropDownValueController;
  // State field(s) for descriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  // State field(s) for RateTextField widget.
  FocusNode? rateTextFieldFocusNode;
  TextEditingController? rateTextFieldTextController;
  String? Function(BuildContext, String?)? rateTextFieldTextControllerValidator;
  // State field(s) for Day widget.
  FocusNode? dayFocusNode;
  TextEditingController? dayTextController;
  String? Function(BuildContext, String?)? dayTextControllerValidator;
  // State field(s) for AvailabilityTextField widget.
  FocusNode? availabilityTextFieldFocusNode;
  TextEditingController? availabilityTextFieldTextController;
  String? Function(BuildContext, String?)?
      availabilityTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseTextFieldFocusNode?.dispose();
    courseTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();

    rateTextFieldFocusNode?.dispose();
    rateTextFieldTextController?.dispose();

    dayFocusNode?.dispose();
    dayTextController?.dispose();

    availabilityTextFieldFocusNode?.dispose();
    availabilityTextFieldTextController?.dispose();
  }
}
