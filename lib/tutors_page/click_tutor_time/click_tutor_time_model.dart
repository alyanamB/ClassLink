import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'click_tutor_time_widget.dart' show ClickTutorTimeWidget;
import 'package:flutter/material.dart';

class ClickTutorTimeModel extends FlutterFlowModel<ClickTutorTimeWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Message widget.
  List<ChatsRecord>? chatList;
  // Stores action output result for [Custom Action - findExistingChatAction] action in Message widget.
  DocumentReference? existingChat;
  // Stores action output result for [Backend Call - Create Document] action in Message widget.
  ChatsRecord? createdChatdoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
