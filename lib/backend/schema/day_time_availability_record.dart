import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DayTimeAvailabilityRecord extends FirestoreRecord {
  DayTimeAvailabilityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "day" field.
  List<String>? _day;
  List<String> get day => _day ?? const [];
  bool hasDay() => _day != null;

  // "times" field.
  List<String>? _times;
  List<String> get times => _times ?? const [];
  bool hasTimes() => _times != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _day = getDataList(snapshotData['day']);
    _times = getDataList(snapshotData['times']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dayTimeAvailability')
          : FirebaseFirestore.instance.collectionGroup('dayTimeAvailability');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('dayTimeAvailability').doc(id);

  static Stream<DayTimeAvailabilityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DayTimeAvailabilityRecord.fromSnapshot(s));

  static Future<DayTimeAvailabilityRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DayTimeAvailabilityRecord.fromSnapshot(s));

  static DayTimeAvailabilityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DayTimeAvailabilityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DayTimeAvailabilityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DayTimeAvailabilityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DayTimeAvailabilityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DayTimeAvailabilityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDayTimeAvailabilityRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class DayTimeAvailabilityRecordDocumentEquality
    implements Equality<DayTimeAvailabilityRecord> {
  const DayTimeAvailabilityRecordDocumentEquality();

  @override
  bool equals(DayTimeAvailabilityRecord? e1, DayTimeAvailabilityRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.day, e2?.day) &&
        listEquality.equals(e1?.times, e2?.times);
  }

  @override
  int hash(DayTimeAvailabilityRecord? e) =>
      const ListEquality().hash([e?.day, e?.times]);

  @override
  bool isValidKey(Object? o) => o is DayTimeAvailabilityRecord;
}
