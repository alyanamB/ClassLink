import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Collection for nps responses
class NpsResponseRecord extends FirestoreRecord {
  NpsResponseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users_id" field.
  String? _usersId;
  String get usersId => _usersId ?? '';
  bool hasUsersId() => _usersId != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "score" field.
  double? _score;
  double get score => _score ?? 0.0;
  bool hasScore() => _score != null;

  void _initializeFields() {
    _usersId = snapshotData['users_id'] as String?;
    _feedback = snapshotData['feedback'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _score = castToType<double>(snapshotData['score']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nps_response');

  static Stream<NpsResponseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NpsResponseRecord.fromSnapshot(s));

  static Future<NpsResponseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NpsResponseRecord.fromSnapshot(s));

  static NpsResponseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NpsResponseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NpsResponseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NpsResponseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NpsResponseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NpsResponseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNpsResponseRecordData({
  String? usersId,
  String? feedback,
  DateTime? timestamp,
  double? score,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'users_id': usersId,
      'feedback': feedback,
      'timestamp': timestamp,
      'score': score,
    }.withoutNulls,
  );

  return firestoreData;
}

class NpsResponseRecordDocumentEquality implements Equality<NpsResponseRecord> {
  const NpsResponseRecordDocumentEquality();

  @override
  bool equals(NpsResponseRecord? e1, NpsResponseRecord? e2) {
    return e1?.usersId == e2?.usersId &&
        e1?.feedback == e2?.feedback &&
        e1?.timestamp == e2?.timestamp &&
        e1?.score == e2?.score;
  }

  @override
  int hash(NpsResponseRecord? e) => const ListEquality()
      .hash([e?.usersId, e?.feedback, e?.timestamp, e?.score]);

  @override
  bool isValidKey(Object? o) => o is NpsResponseRecord;
}
