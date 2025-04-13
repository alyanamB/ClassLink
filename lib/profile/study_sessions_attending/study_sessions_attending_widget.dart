import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'study_sessions_attending_model.dart';
export 'study_sessions_attending_model.dart';

class StudySessionsAttendingWidget extends StatefulWidget {
  const StudySessionsAttendingWidget({super.key});

  static String routeName = 'StudySessionsAttending';
  static String routePath = '/studySessionsAttending';

  @override
  State<StudySessionsAttendingWidget> createState() =>
      _StudySessionsAttendingWidgetState();
}

class _StudySessionsAttendingWidgetState
    extends State<StudySessionsAttendingWidget> {
  late StudySessionsAttendingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudySessionsAttendingModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'StudySessionsAttending'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        icon: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'STUDY_SESSIONS_ATTENDING_arrow_back_ICN_');
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(ProfileTabWidget.routeName);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Text(
                      'Study Sessions Attending',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Inter Tight',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  StreamBuilder<List<StudySessionsRecord>>(
                    stream: queryStudySessionsRecord(
                      queryBuilder: (studySessionsRecord) => studySessionsRecord
                          .where(
                            'sesh_usersAttending',
                            arrayContains: currentUserReference,
                          )
                          .orderBy('sesh_dateTime', descending: true),
                    )..listen((snapshot) {
                        List<StudySessionsRecord>
                            listViewStudySessionsRecordList = snapshot;
                        if (_model.listViewPreviousSnapshot != null &&
                            !const ListEquality(
                                    StudySessionsRecordDocumentEquality())
                                .equals(listViewStudySessionsRecordList,
                                    _model.listViewPreviousSnapshot)) {
                          () async {
                            logFirebaseEvent(
                                'STUDY_SESSIONS_ATTENDING_ListView_1yueq2');
                            logFirebaseEvent('ListView_google_analytics_event');
                            logFirebaseEvent(
                              'sessions_attending',
                              parameters: {
                                'session': listViewStudySessionsRecordList
                                    .take(
                                        listViewStudySessionsRecordList.length)
                                    .toList()
                                    .firstOrNull,
                              },
                            );

                            safeSetState(() {});
                          }();
                        }
                        _model.listViewPreviousSnapshot = snapshot;
                      }),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<StudySessionsRecord>
                          listViewStudySessionsRecordList = snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewStudySessionsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewStudySessionsRecord =
                              listViewStudySessionsRecordList[listViewIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 15.0, 20.0, 15.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'STUDY_SESSIONS_ATTENDING_Container_ajcbf');
                                logFirebaseEvent('Container_navigate_to');

                                context.pushNamed(
                                  StudySessionDetailsWidget.routeName,
                                  queryParameters: {
                                    'studySeshDocRef': serializeParam(
                                      listViewStudySessionsRecord,
                                      ParamType.Document,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'studySeshDocRef':
                                        listViewStudySessionsRecord,
                                  },
                                );

                                logFirebaseEvent(
                                    'Container_google_analytics_event');
                                logFirebaseEvent('viewed_studySession');
                              },
                              child: Container(
                                height: 75.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(14.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 2.0, 8.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  listViewStudySessionsRecord
                                                      .seshCourseMajor,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                                Text(
                                                  dateTimeFormat(
                                                      "Md",
                                                      listViewStudySessionsRecord
                                                          .seshDateTime!),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    ' ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    listViewStudySessionsRecord
                                                        .seshTitle
                                                        .maybeHandleOverflow(
                                                      maxChars: 25,
                                                      replacement: '…',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.black,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    dateTimeFormat(
                                                        "jm",
                                                        listViewStudySessionsRecord
                                                            .seshDateTime!),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                listViewStudySessionsRecord
                                                    .seshCourseNumber,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              Text(
                                                listViewStudySessionsRecord
                                                    .seshLocation
                                                    .maybeHandleOverflow(
                                                  maxChars: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 12;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 22;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 100;
                                                    } else {
                                                      return 12;
                                                    }
                                                  }(),
                                                  replacement: '…',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
