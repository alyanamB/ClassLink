import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_tab_model.dart';
export 'profile_tab_model.dart';

class ProfileTabWidget extends StatefulWidget {
  const ProfileTabWidget({super.key});

  static String routeName = 'profileTab';
  static String routePath = '/profileTab';

  @override
  State<ProfileTabWidget> createState() => _ProfileTabWidgetState();
}

class _ProfileTabWidgetState extends State<ProfileTabWidget> {
  late ProfileTabModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileTabModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'profileTab'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PROFILE_TAB_profileTab_ON_INIT_STATE');
      logFirebaseEvent('profileTab_firestore_query');
      _model.filteredUnreadChatsTP = await queryChatsRecordOnce(
        queryBuilder: (chatsRecord) => chatsRecord.where(
          'unread_user',
          isEqualTo: currentUserReference,
        ),
      );
    });

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
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 40.0, 24.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'PROFILE_TAB_ManageProfileButton_ON_TAP');
                        logFirebaseEvent('ManageProfileButton_navigate_to');

                        context.pushNamed(ProfileWidget.routeName);
                      },
                      text: 'Manage Profile',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFE0E0E2),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              font: GoogleFonts.interTight(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  if (valueOrDefault<bool>(
                      currentUserDocument?.tutorInterest, false))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'PROFILE_TAB_ManageTutorButton_ON_TAP');
                            if (valueOrDefault<bool>(
                                currentUserDocument?.tutorInterest, false)) {
                              logFirebaseEvent(
                                  'ManageTutorButton_firestore_query');
                              _model.isTutorDoc = await queryTutorsRecordOnce(
                                queryBuilder: (tutorsRecord) =>
                                    tutorsRecord.where(
                                  'user',
                                  isEqualTo: currentUserReference,
                                ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);
                              logFirebaseEvent(
                                  'ManageTutorButton_firestore_query');
                              _model.availTimeDocOutput =
                                  await queryDayTimeAvailabilityRecordOnce(
                                queryBuilder: (dayTimeAvailabilityRecord) =>
                                    dayTimeAvailabilityRecord.where(
                                  'tutorRef',
                                  isEqualTo: _model.isTutorDoc?.reference,
                                ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);
                              if (!(_model.availTimeDocOutput?.reference !=
                                  null)) {
                                logFirebaseEvent(
                                    'ManageTutorButton_backend_call');

                                await DayTimeAvailabilityRecord.createDoc(
                                        _model.isTutorDoc!.reference)
                                    .set(createDayTimeAvailabilityRecordData());
                              }
                            }
                            logFirebaseEvent('ManageTutorButton_navigate_to');

                            context.pushNamed(TutorProfileWidget.routeName);

                            safeSetState(() {});
                          },
                          text: 'Manage Tutor Account',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFE0E0E2),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  Stack(
                    children: [
                      if (FFDevEnvironmentValues().messagingButtonEnvVal)
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'PROFILE_TAB_MessageCenterButton_ON_TAP');
                              logFirebaseEvent(
                                  'MessageCenterButton_navigate_to');

                              context.pushNamed(MesageTempWidget.routeName);
                            },
                            text: 'Message Center',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Builder(
                          builder: (context) {
                            if (((_model.filteredUnreadChatsTP != null &&
                                        (_model.filteredUnreadChatsTP)!
                                            .isNotEmpty) ==
                                    true) &&
                                (currentUserReference != null)) {
                              return Builder(
                                builder: (context) {
                                  if (valueOrDefault<bool>(
                                    functions.sumNewMessages(
                                            _model.filteredUnreadChatsTP!
                                                .toList(),
                                            currentUserReference!) >
                                        0,
                                    true,
                                  )) {
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 10.0),
                                      child: badges.Badge(
                                        badgeContent: Text(
                                          valueOrDefault<String>(
                                            functions
                                                .sumNewMessages(
                                                    _model
                                                        .filteredUnreadChatsTP!
                                                        .toList(),
                                                    currentUserReference!)
                                                .toString(),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 10.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        shape: badges.BadgeShape.circle,
                                        badgeColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        elevation: 4.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 8.0, 8.0),
                                        position: badges.BadgePosition.topEnd(),
                                        animationType:
                                            badges.BadgeAnimationType.scale,
                                        toAnimate: true,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.98, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.chat_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 25.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      width: 0.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    );
                                  }
                                },
                              );
                            } else {
                              return Align(
                                alignment: AlignmentDirectional(1.0, 1.0),
                                child: Container(
                                  width: 0.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'PROFILE_TAB_StudySessionsAttendingButton');
                        logFirebaseEvent(
                            'StudySessionsAttendingButton_navigate_to');

                        context.goNamed(StudySessionsAttendingWidget.routeName);

                        logFirebaseEvent(
                            'StudySessionsAttendingButton_google_anal');
                        logFirebaseEvent('view_attending_study_sessions');
                      },
                      text: 'Study Sessions Attending',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFE0E0E2),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              font: GoogleFonts.interTight(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('PROFILE_TAB_PAGE_AdButton_ON_TAP');
                        logFirebaseEvent('AdButton_navigate_to');

                        context.pushNamed(AdPageWidget.routeName);
                      },
                      text: 'Ad Page',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFE0E0E2),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              font: GoogleFonts.interTight(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'PROFILE_TAB_PAGE_LogoutButton_ON_TAP');
                                logFirebaseEvent('LogoutButton_auth');
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();

                                logFirebaseEvent('LogoutButton_navigate_to');

                                context.goNamedAuth(
                                    LoginPageWidget.routeName, context.mounted);
                              },
                              text: 'Logout',
                              options: FFButtonOptions(
                                width: 340.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFF46161),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
