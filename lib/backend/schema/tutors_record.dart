import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutorsRecord extends FirestoreRecord {
  TutorsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;

  /// user UID
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "courses" field.
  List<String>? _courses;
  List<String> get courses => _courses ?? const [];
  bool hasCourses() => _courses != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "rate" field.
  String? _rate;
  String get rate => _rate ?? '';
  bool hasRate() => _rate != null;

  // "major" field.
  String? _major;
  String get major => _major ?? '';
  bool hasMajor() => _major != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "teaching_style" field.
  String? _teachingStyle;
  String get teachingStyle => _teachingStyle ?? '';
  bool hasTeachingStyle() => _teachingStyle != null;

  // "availability" field.
  List<AvailabilityStruct>? _availability;
  List<AvailabilityStruct> get availability => _availability ?? const [];
  bool hasAvailability() => _availability != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _courses = getDataList(snapshotData['courses']);
    _description = snapshotData['description'] as String?;
    _rate = snapshotData['rate'] as String?;
    _major = snapshotData['major'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _teachingStyle = snapshotData['teaching_style'] as String?;
    _availability = getStructList(
      snapshotData['availability'],
      AvailabilityStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tutors');

  static Stream<TutorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TutorsRecord.fromSnapshot(s));

  static Future<TutorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TutorsRecord.fromSnapshot(s));

  static TutorsRecord fromSnapshot(DocumentSnapshot snapshot) => TutorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TutorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TutorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TutorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TutorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTutorsRecordData({
  DocumentReference? user,
  String? description,
  String? rate,
  String? major,
  String? photoUrl,
  String? displayName,
  String? teachingStyle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'description': description,
      'rate': rate,
      'major': major,
      'photo_url': photoUrl,
      'display_name': displayName,
      'teaching_style': teachingStyle,
    }.withoutNulls,
  );

  return firestoreData;
}

class TutorsRecordDocumentEquality implements Equality<TutorsRecord> {
  const TutorsRecordDocumentEquality();

  @override
  bool equals(TutorsRecord? e1, TutorsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        listEquality.equals(e1?.courses, e2?.courses) &&
        e1?.description == e2?.description &&
        e1?.rate == e2?.rate &&
        e1?.major == e2?.major &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.displayName == e2?.displayName &&
        e1?.teachingStyle == e2?.teachingStyle &&
        listEquality.equals(e1?.availability, e2?.availability);
  }

  @override
  int hash(TutorsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.courses,
        e?.description,
        e?.rate,
        e?.major,
        e?.photoUrl,
        e?.displayName,
        e?.teachingStyle,
        e?.availability
      ]);

  @override
  bool isValidKey(Object? o) => o is TutorsRecord;
}
