import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'view_tutor_profile_widget.dart' show ViewTutorProfileWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class ViewTutorProfileModel extends FlutterFlowModel<ViewTutorProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Firestore Query - Query a collection] action in Message widget.
  List<ChatsRecord>? chatList;
  // Stores action output result for [Custom Action - findExistingChatAction] action in Message widget.
  DocumentReference? existingChat;
  // Stores action output result for [Backend Call - Create Document] action in Message widget.
  ChatsRecord? createdChatdoc;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
