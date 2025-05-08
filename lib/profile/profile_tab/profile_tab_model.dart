import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_tab_widget.dart' show ProfileTabWidget;
import 'package:flutter/material.dart';

class ProfileTabModel extends FlutterFlowModel<ProfileTabWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in profileTab widget.
  List<ChatsRecord>? filteredUnreadChatsTP;
  // Stores action output result for [Firestore Query - Query a collection] action in ManageTutorButton widget.
  TutorsRecord? isTutorDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in ManageTutorButton widget.
  DayTimeAvailabilityRecord? availTimeDocOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
