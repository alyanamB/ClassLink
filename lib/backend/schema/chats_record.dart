import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

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

  // "unread_users" field.
  List<DocumentReference>? _unreadUsers;
  List<DocumentReference> get unreadUsers => _unreadUsers ?? const [];
  bool hasUnreadUsers() => _unreadUsers != null;

  // "usernames" field.
  List<String>? _usernames;
  List<String> get usernames => _usernames ?? const [];
  bool hasUsernames() => _usernames != null;

  // "unread_user" field.
  DocumentReference? _unreadUser;
  DocumentReference? get unreadUser => _unreadUser;
  bool hasUnreadUser() => _unreadUser != null;

  // "new_message_count" field.
  int? _newMessageCount;
  int get newMessageCount => _newMessageCount ?? 0;
  bool hasNewMessageCount() => _newMessageCount != null;

  void _initializeFields() {
    _users = getDataList(snapshotData['users']);
    _lastMessage = snapshotData['last_message'] as String?;
    _lastMessageDT = snapshotData['last_message_DT'] as DateTime?;
    _createdDT = snapshotData['created_DT'] as DateTime?;
    _unreadUsers = getDataList(snapshotData['unread_users']);
    _usernames = getDataList(snapshotData['usernames']);
    _unreadUser = snapshotData['unread_user'] as DocumentReference?;
    _newMessageCount = castToType<int>(snapshotData['new_message_count']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? lastMessage,
  DateTime? lastMessageDT,
  DateTime? createdDT,
  DocumentReference? unreadUser,
  int? newMessageCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'last_message': lastMessage,
      'last_message_DT': lastMessageDT,
      'created_DT': createdDT,
      'unread_user': unreadUser,
      'new_message_count': newMessageCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.users, e2?.users) &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.lastMessageDT == e2?.lastMessageDT &&
        e1?.createdDT == e2?.createdDT &&
        listEquality.equals(e1?.unreadUsers, e2?.unreadUsers) &&
        listEquality.equals(e1?.usernames, e2?.usernames) &&
        e1?.unreadUser == e2?.unreadUser &&
        e1?.newMessageCount == e2?.newMessageCount;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.users,
        e?.lastMessage,
        e?.lastMessageDT,
        e?.createdDT,
        e?.unreadUsers,
        e?.usernames,
        e?.unreadUser,
        e?.newMessageCount
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
