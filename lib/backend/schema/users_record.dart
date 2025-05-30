import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "major" field.
  String? _major;
  String get major => _major ?? '';
  bool hasMajor() => _major != null;

  // "academic_status" field.
  String? _academicStatus;
  String get academicStatus => _academicStatus ?? '';
  bool hasAcademicStatus() => _academicStatus != null;

  // "academic_year" field.
  String? _academicYear;
  String get academicYear => _academicYear ?? '';
  bool hasAcademicYear() => _academicYear != null;

  // "tutor_interest" field.
  bool? _tutorInterest;
  bool get tutorInterest => _tutorInterest ?? false;
  bool hasTutorInterest() => _tutorInterest != null;

  // "nps_shown" field.
  bool? _npsShown;
  bool get npsShown => _npsShown ?? false;
  bool hasNpsShown() => _npsShown != null;

  // "tutorRef" field.
  DocumentReference? _tutorRef;
  DocumentReference? get tutorRef => _tutorRef;
  bool hasTutorRef() => _tutorRef != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _major = snapshotData['major'] as String?;
    _academicStatus = snapshotData['academic_status'] as String?;
    _academicYear = snapshotData['academic_year'] as String?;
    _tutorInterest = snapshotData['tutor_interest'] as bool?;
    _npsShown = snapshotData['nps_shown'] as bool?;
    _tutorRef = snapshotData['tutorRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? major,
  String? academicStatus,
  String? academicYear,
  bool? tutorInterest,
  bool? npsShown,
  DocumentReference? tutorRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'major': major,
      'academic_status': academicStatus,
      'academic_year': academicYear,
      'tutor_interest': tutorInterest,
      'nps_shown': npsShown,
      'tutorRef': tutorRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.major == e2?.major &&
        e1?.academicStatus == e2?.academicStatus &&
        e1?.academicYear == e2?.academicYear &&
        e1?.tutorInterest == e2?.tutorInterest &&
        e1?.npsShown == e2?.npsShown &&
        e1?.tutorRef == e2?.tutorRef;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.major,
        e?.academicStatus,
        e?.academicYear,
        e?.tutorInterest,
        e?.npsShown,
        e?.tutorRef
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
