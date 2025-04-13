import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MajorsRecord extends FirestoreRecord {
  MajorsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Major" field.
  String? _major;
  String get major => _major ?? '';
  bool hasMajor() => _major != null;

  void _initializeFields() {
    _major = snapshotData['Major'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('majors');

  static Stream<MajorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MajorsRecord.fromSnapshot(s));

  static Future<MajorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MajorsRecord.fromSnapshot(s));

  static MajorsRecord fromSnapshot(DocumentSnapshot snapshot) => MajorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MajorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MajorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MajorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MajorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMajorsRecordData({
  String? major,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Major': major,
    }.withoutNulls,
  );

  return firestoreData;
}

class MajorsRecordDocumentEquality implements Equality<MajorsRecord> {
  const MajorsRecordDocumentEquality();

  @override
  bool equals(MajorsRecord? e1, MajorsRecord? e2) {
    return e1?.major == e2?.major;
  }

  @override
  int hash(MajorsRecord? e) => const ListEquality().hash([e?.major]);

  @override
  bool isValidKey(Object? o) => o is MajorsRecord;
}
