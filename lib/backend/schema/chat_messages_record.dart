import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessagesRecord extends FirestoreRecord {
  ChatMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "chat_reference" field.
  DocumentReference? _chatReference;
  DocumentReference? get chatReference => _chatReference;
  bool hasChatReference() => _chatReference != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "sent_DT" field.
  DateTime? _sentDT;
  DateTime? get sentDT => _sentDT;
  bool hasSentDT() => _sentDT != null;

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _chatReference = snapshotData['chat_reference'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _sentDT = snapshotData['sent_DT'] as DateTime?;
    _sender = snapshotData['sender'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_messages');

  static Stream<ChatMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatMessagesRecord.fromSnapshot(s));

  static Future<ChatMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatMessagesRecord.fromSnapshot(s));

  static ChatMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatMessagesRecordData({
  DocumentReference? chatReference,
  String? message,
  DateTime? sentDT,
  DocumentReference? sender,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chat_reference': chatReference,
      'message': message,
      'sent_DT': sentDT,
      'sender': sender,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatMessagesRecordDocumentEquality
    implements Equality<ChatMessagesRecord> {
  const ChatMessagesRecordDocumentEquality();

  @override
  bool equals(ChatMessagesRecord? e1, ChatMessagesRecord? e2) {
    return e1?.chatReference == e2?.chatReference &&
        e1?.message == e2?.message &&
        e1?.sentDT == e2?.sentDT &&
        e1?.sender == e2?.sender &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ChatMessagesRecord? e) => const ListEquality()
      .hash([e?.chatReference, e?.message, e?.sentDT, e?.sender, e?.image]);

  @override
  bool isValidKey(Object? o) => o is ChatMessagesRecord;
}
