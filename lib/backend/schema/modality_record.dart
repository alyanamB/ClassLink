import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// modality of tutors (ex.
///
/// remote / in-person)
class ModalityRecord extends FirestoreRecord {
  ModalityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Remote" field.
  bool? _remote;
  bool get remote => _remote ?? false;
  bool hasRemote() => _remote != null;

  // "Hybrid" field.
  bool? _hybrid;
  bool get hybrid => _hybrid ?? false;
  bool hasHybrid() => _hybrid != null;

  // "InPerson" field.
  bool? _inPerson;
  bool get inPerson => _inPerson ?? false;
  bool hasInPerson() => _inPerson != null;

  // "ModTutorRef" field.
  DocumentReference? _modTutorRef;
  DocumentReference? get modTutorRef => _modTutorRef;
  bool hasModTutorRef() => _modTutorRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _remote = snapshotData['Remote'] as bool?;
    _hybrid = snapshotData['Hybrid'] as bool?;
    _inPerson = snapshotData['InPerson'] as bool?;
    _modTutorRef = snapshotData['ModTutorRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('modality')
          : FirebaseFirestore.instance.collectionGroup('modality');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('modality').doc(id);

  static Stream<ModalityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModalityRecord.fromSnapshot(s));

  static Future<ModalityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ModalityRecord.fromSnapshot(s));

  static ModalityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ModalityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModalityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModalityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModalityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModalityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createModalityRecordData({
  bool? remote,
  bool? hybrid,
  bool? inPerson,
  DocumentReference? modTutorRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Remote': remote,
      'Hybrid': hybrid,
      'InPerson': inPerson,
      'ModTutorRef': modTutorRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModalityRecordDocumentEquality implements Equality<ModalityRecord> {
  const ModalityRecordDocumentEquality();

  @override
  bool equals(ModalityRecord? e1, ModalityRecord? e2) {
    return e1?.remote == e2?.remote &&
        e1?.hybrid == e2?.hybrid &&
        e1?.inPerson == e2?.inPerson &&
        e1?.modTutorRef == e2?.modTutorRef;
  }

  @override
  int hash(ModalityRecord? e) => const ListEquality()
      .hash([e?.remote, e?.hybrid, e?.inPerson, e?.modTutorRef]);

  @override
  bool isValidKey(Object? o) => o is ModalityRecord;
}
