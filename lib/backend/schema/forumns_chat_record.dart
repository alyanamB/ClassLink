import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ForumnsChatRecord extends FirestoreRecord {
  ForumnsChatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "title_ofMessage" field.
  String? _titleOfMessage;
  String get titleOfMessage => _titleOfMessage ?? '';
  bool hasTitleOfMessage() => _titleOfMessage != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "forumn_Ref" field.
  DocumentReference? _forumnRef;
  DocumentReference? get forumnRef => _forumnRef;
  bool hasForumnRef() => _forumnRef != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _sentDT = snapshotData['sent_DT'] as DateTime?;
    _sender = snapshotData['sender'] as DocumentReference?;
    _titleOfMessage = snapshotData['title_ofMessage'] as String?;
    _image = snapshotData['image'] as String?;
    _forumnRef = snapshotData['forumn_Ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('forumns_chat');

  static Stream<ForumnsChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ForumnsChatRecord.fromSnapshot(s));

  static Future<ForumnsChatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ForumnsChatRecord.fromSnapshot(s));

  static ForumnsChatRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ForumnsChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ForumnsChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ForumnsChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ForumnsChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ForumnsChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createForumnsChatRecordData({
  String? message,
  DateTime? sentDT,
  DocumentReference? sender,
  String? titleOfMessage,
  String? image,
  DocumentReference? forumnRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'sent_DT': sentDT,
      'sender': sender,
      'title_ofMessage': titleOfMessage,
      'image': image,
      'forumn_Ref': forumnRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ForumnsChatRecordDocumentEquality implements Equality<ForumnsChatRecord> {
  const ForumnsChatRecordDocumentEquality();

  @override
  bool equals(ForumnsChatRecord? e1, ForumnsChatRecord? e2) {
    return e1?.message == e2?.message &&
        e1?.sentDT == e2?.sentDT &&
        e1?.sender == e2?.sender &&
        e1?.titleOfMessage == e2?.titleOfMessage &&
        e1?.image == e2?.image &&
        e1?.forumnRef == e2?.forumnRef;
  }

  @override
  int hash(ForumnsChatRecord? e) => const ListEquality().hash([
        e?.message,
        e?.sentDT,
        e?.sender,
        e?.titleOfMessage,
        e?.image,
        e?.forumnRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ForumnsChatRecord;
}
