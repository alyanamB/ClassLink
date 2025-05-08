// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

/// Find an existing chat between two users or return null
Future<DocumentReference?> findExistingChatAction(
  List<ChatsRecord> chatList,
  DocumentReference tutorRef,
  DocumentReference studentRef,
) async {
  // Add your function code here!
  for (var chat in chatList) {
    final users = chat.users;
    if (users.contains(tutorRef) && users.contains(studentRef)) {
      return chat.reference;
    }
  }
  return null;
}
