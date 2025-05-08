import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Study session created by user
class StudySessionsRecord extends FirestoreRecord {
  StudySessionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_creator" field.
  DocumentReference? _userCreator;
  DocumentReference? get userCreator => _userCreator;
  bool hasUserCreator() => _userCreator != null;

  // "sesh_description" field.
  String? _seshDescription;
  String get seshDescription => _seshDescription ?? '';
  bool hasSeshDescription() => _seshDescription != null;

  // "sesh_title" field.
  String? _seshTitle;
  String get seshTitle => _seshTitle ?? '';
  bool hasSeshTitle() => _seshTitle != null;

  // "sesh_course_major" field.
  String? _seshCourseMajor;
  String get seshCourseMajor => _seshCourseMajor ?? '';
  bool hasSeshCourseMajor() => _seshCourseMajor != null;

  // "sesh_course_number" field.
  String? _seshCourseNumber;
  String get seshCourseNumber => _seshCourseNumber ?? '';
  bool hasSeshCourseNumber() => _seshCourseNumber != null;

  // "sesh_location" field.
  String? _seshLocation;
  String get seshLocation => _seshLocation ?? '';
  bool hasSeshLocation() => _seshLocation != null;

  // "sesh_dateTime" field.
  DateTime? _seshDateTime;
  DateTime? get seshDateTime => _seshDateTime;
  bool hasSeshDateTime() => _seshDateTime != null;

  // "sesh_usersAttending" field.
  List<DocumentReference>? _seshUsersAttending;
  List<DocumentReference> get seshUsersAttending =>
      _seshUsersAttending ?? const [];
  bool hasSeshUsersAttending() => _seshUsersAttending != null;

  // "user_pfp" field.
  String? _userPfp;
  String get userPfp => _userPfp ?? '';
  bool hasUserPfp() => _userPfp != null;

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

  // "dateTime_sesh_string" field.
  String? _dateTimeSeshString;
  String get dateTimeSeshString => _dateTimeSeshString ?? '';
  bool hasDateTimeSeshString() => _dateTimeSeshString != null;

  void _initializeFields() {
    _userCreator = snapshotData['user_creator'] as DocumentReference?;
    _seshDescription = snapshotData['sesh_description'] as String?;
    _seshTitle = snapshotData['sesh_title'] as String?;
    _seshCourseMajor = snapshotData['sesh_course_major'] as String?;
    _seshCourseNumber = snapshotData['sesh_course_number'] as String?;
    _seshLocation = snapshotData['sesh_location'] as String?;
    _seshDateTime = snapshotData['sesh_dateTime'] as DateTime?;
    _seshUsersAttending = getDataList(snapshotData['sesh_usersAttending']);
    _userPfp = snapshotData['user_pfp'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _dateTimeSeshString = snapshotData['dateTime_sesh_string'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('study_sessions');

  static Stream<StudySessionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudySessionsRecord.fromSnapshot(s));

  static Future<StudySessionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudySessionsRecord.fromSnapshot(s));

  static StudySessionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudySessionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudySessionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudySessionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudySessionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudySessionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudySessionsRecordData({
  DocumentReference? userCreator,
  String? seshDescription,
  String? seshTitle,
  String? seshCourseMajor,
  String? seshCourseNumber,
  String? seshLocation,
  DateTime? seshDateTime,
  String? userPfp,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? dateTimeSeshString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_creator': userCreator,
      'sesh_description': seshDescription,
      'sesh_title': seshTitle,
      'sesh_course_major': seshCourseMajor,
      'sesh_course_number': seshCourseNumber,
      'sesh_location': seshLocation,
      'sesh_dateTime': seshDateTime,
      'user_pfp': userPfp,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'dateTime_sesh_string': dateTimeSeshString,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudySessionsRecordDocumentEquality
    implements Equality<StudySessionsRecord> {
  const StudySessionsRecordDocumentEquality();

  @override
  bool equals(StudySessionsRecord? e1, StudySessionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userCreator == e2?.userCreator &&
        e1?.seshDescription == e2?.seshDescription &&
        e1?.seshTitle == e2?.seshTitle &&
        e1?.seshCourseMajor == e2?.seshCourseMajor &&
        e1?.seshCourseNumber == e2?.seshCourseNumber &&
        e1?.seshLocation == e2?.seshLocation &&
        e1?.seshDateTime == e2?.seshDateTime &&
        listEquality.equals(e1?.seshUsersAttending, e2?.seshUsersAttending) &&
        e1?.userPfp == e2?.userPfp &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.dateTimeSeshString == e2?.dateTimeSeshString;
  }

  @override
  int hash(StudySessionsRecord? e) => const ListEquality().hash([
        e?.userCreator,
        e?.seshDescription,
        e?.seshTitle,
        e?.seshCourseMajor,
        e?.seshCourseNumber,
        e?.seshLocation,
        e?.seshDateTime,
        e?.seshUsersAttending,
        e?.userPfp,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.dateTimeSeshString
      ]);

  @override
  bool isValidKey(Object? o) => o is StudySessionsRecord;
}
