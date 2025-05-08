import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ForumnsRecord extends FirestoreRecord {
  ForumnsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "last_message_DT" field.
  DateTime? _lastMessageDT;
  DateTime? get lastMessageDT => _lastMessageDT;
  bool hasLastMessageDT() => _lastMessageDT != null;

  // "created_DT" field.
  DateTime? _createdDT;
  DateTime? get createdDT => _createdDT;
  bool hasCreatedDT() => _createdDT != null;

  // "courseNumber" field.
  String? _courseNumber;
  String get courseNumber => _courseNumber ?? '';
  bool hasCourseNumber() => _courseNumber != null;

  // "usersInteract" field.
  List<DocumentReference>? _usersInteract;
  List<DocumentReference> get usersInteract => _usersInteract ?? const [];
  bool hasUsersInteract() => _usersInteract != null;

  // "userInteractCOUNT" field.
  int? _userInteractCOUNT;
  int get userInteractCOUNT => _userInteractCOUNT ?? 0;
  bool hasUserInteractCOUNT() => _userInteractCOUNT != null;

  // "course_Major" field.
  String? _courseMajor;
  String get courseMajor => _courseMajor ?? '';
  bool hasCourseMajor() => _courseMajor != null;

  void _initializeFields() {
    _lastMessage = snapshotData['last_message'] as String?;
    _lastMessageDT = snapshotData['last_message_DT'] as DateTime?;
    _createdDT = snapshotData['created_DT'] as DateTime?;
    _courseNumber = snapshotData['courseNumber'] as String?;
    _usersInteract = getDataList(snapshotData['usersInteract']);
    _userInteractCOUNT = castToType<int>(snapshotData['userInteractCOUNT']);
    _courseMajor = snapshotData['course_Major'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('forumns');

  static Stream<ForumnsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ForumnsRecord.fromSnapshot(s));

  static Future<ForumnsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ForumnsRecord.fromSnapshot(s));

  static ForumnsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ForumnsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ForumnsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ForumnsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ForumnsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ForumnsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createForumnsRecordData({
  String? lastMessage,
  DateTime? lastMessageDT,
  DateTime? createdDT,
  String? courseNumber,
  int? userInteractCOUNT,
  String? courseMajor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'last_message': lastMessage,
      'last_message_DT': lastMessageDT,
      'created_DT': createdDT,
      'courseNumber': courseNumber,
      'userInteractCOUNT': userInteractCOUNT,
      'course_Major': courseMajor,
    }.withoutNulls,
  );

  return firestoreData;
}

class ForumnsRecordDocumentEquality implements Equality<ForumnsRecord> {
  const ForumnsRecordDocumentEquality();

  @override
  bool equals(ForumnsRecord? e1, ForumnsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.lastMessage == e2?.lastMessage &&
        e1?.lastMessageDT == e2?.lastMessageDT &&
        e1?.createdDT == e2?.createdDT &&
        e1?.courseNumber == e2?.courseNumber &&
        listEquality.equals(e1?.usersInteract, e2?.usersInteract) &&
        e1?.userInteractCOUNT == e2?.userInteractCOUNT &&
        e1?.courseMajor == e2?.courseMajor;
  }

  @override
  int hash(ForumnsRecord? e) => const ListEquality().hash([
        e?.lastMessage,
        e?.lastMessageDT,
        e?.createdDT,
        e?.courseNumber,
        e?.usersInteract,
        e?.userInteractCOUNT,
        e?.courseMajor
      ]);

  @override
  bool isValidKey(Object? o) => o is ForumnsRecord;
}
