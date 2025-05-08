import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'forumn_c_r_e_a_t_e_page_model.dart';
export 'forumn_c_r_e_a_t_e_page_model.dart';

class ForumnCREATEPageWidget extends StatefulWidget {
  const ForumnCREATEPageWidget({super.key});

  static String routeName = 'Forumn_CREATE_Page';
  static String routePath = '/forumnCREATEPage';

  @override
  State<ForumnCREATEPageWidget> createState() => _ForumnCREATEPageWidgetState();
}

class _ForumnCREATEPageWidgetState extends State<ForumnCREATEPageWidget> {
  late ForumnCREATEPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForumnCREATEPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Forumn_CREATE_Page'});
    _model.courseNumberINPUTTextController ??= TextEditingController();
    _model.courseNumberINPUTFocusNode ??= FocusNode();

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 20.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('FORUMN_C_R_E_A_T_E_arrow_back_rounded_IC');
              logFirebaseEvent('IconButton_navigate_back');
              context.safePop();
            },
          ),
          title: Text(
            'Create Class Forum',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                    child: Text(
                      'Create a forum for your class to connect with classmates, share resources, and discuss course material.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontStyle,
                          ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Course Information',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Department/Major',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .majorDropDownINPUTValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            'Undecided',
                                            'Accounting',
                                            'Art',
                                            'Art Histor',
                                            'Biological Sciences',
                                            'Biology',
                                            'Biomedical Engineering',
                                            'Biotechnology',
                                            'Cell and Molecular Biology',
                                            'Chemical Engineering',
                                            'Chemistry',
                                            'Civil Engineering',
                                            'Communication Studies',
                                            'Computer Engineering',
                                            'Computer Science',
                                            'Criminology and Criminal Justice',
                                            'Data Science',
                                            'Economics',
                                            'Electrical Engineering B.S.',
                                            'English B.A.',
                                            'Environmental and Natural Resource Economics B.S.',
                                            'Environmental Science and Management B.S.',
                                            'Film/Media B.A.',
                                            'Gender and Women\'s Studies B.A.',
                                            'Global Business B.S.',
                                            'Health Studies B.S.',
                                            'History B.A.',
                                            'Human Development and Family Science B.S.',
                                            'Industrial and Systems Engineering B.S. ',
                                            'International Business Program',
                                            'Journalism B.A.',
                                            'Kinesiology B.S.',
                                            'Landscape Architecture B.L.A. ',
                                            'Management B.S.',
                                            'Marine Affairs B.A., B.S.',
                                            'Marine Biology B.S.',
                                            'Mathematics B.A., B.S.',
                                            'Mechanical Engineering B.S. ',
                                            'Medical Laboratory Science B.S.',
                                            'Music B.A., B.M.',
                                            'Music Therapy B.M.',
                                            'Natural Resource Science B.S.',
                                            'Nursing B.S.',
                                            'Pharmaceutical Sciences B.S.',
                                            'Pharmacy Pharm.D.',
                                            'Philosophy B.A.',
                                            'Physics B.A., B.S. Bachelor\'s to Master\'s',
                                            'Political Science B.A. ',
                                            'Psychology B.A., B.S.',
                                            'Public Relations B.A.',
                                            'Sociology B.A.',
                                            'Sports Media and Communication B.A.',
                                            'Supply Chain Management B.S.',
                                            'Theatre B.F.A., B.A.',
                                            'Wildlife and Conservation Biology B.S.'
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.majorDropDownINPUTValue =
                                                  val),
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          hintText: 'Major',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Course Number',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        TextFormField(
                                          controller: _model
                                              .courseNumberINPUTTextController,
                                          focusNode:
                                              _model.courseNumberINPUTFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.courseNumberINPUTTextController',
                                            Duration(milliseconds: 2000),
                                            () async {
                                              logFirebaseEvent(
                                                  'FORUMN_C_R_E_A_T_E_CourseNumber_INPUT_ON');
                                              logFirebaseEvent(
                                                  'CourseNumber_INPUT_firestore_query');
                                              _model.sameCourse =
                                                  await queryForumnsRecordOnce(
                                                queryBuilder: (forumnsRecord) =>
                                                    forumnsRecord.where(
                                                  'courseNumber',
                                                  isEqualTo: functions
                                                      .courseFormatting(_model
                                                          .courseNumberINPUTTextController
                                                          .text),
                                                ),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);
                                              if (_model
                                                      .sameCourse?.reference !=
                                                  null) {
                                                logFirebaseEvent(
                                                    'CourseNumber_INPUT_update_page_state');
                                                _model.uniqueCourse = false;
                                                safeSetState(() {});
                                              } else {
                                                logFirebaseEvent(
                                                    'CourseNumber_INPUT_update_page_state');
                                                _model.uniqueCourse = true;
                                                safeSetState(() {});
                                              }

                                              safeSetState(() {});
                                            },
                                          ),
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'e.g. CSC305',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          validator: _model
                                              .courseNumberINPUTTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 20.0)),
                  ),
                  Stack(
                    children: [
                      if (valueOrDefault<bool>(
                        _model.uniqueCourse,
                        false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 32.0, 0.0, 0.0),
                          child: StreamBuilder<List<ForumnsRecord>>(
                            stream: queryForumnsRecord(),
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
                              List<ForumnsRecord> buttonForumnsRecordList =
                                  snapshot.data!;

                              return FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'FORUMN_C_R_E_A_T_E_CREATE_FORUM_BTN_ON_T');
                                  if (_model.uniqueCourse == true) {
                                    if ((_model.courseNumberINPUTTextController
                                                    .text !=
                                                '') &&
                                        (_model.majorDropDownINPUTValue !=
                                                null &&
                                            _model.majorDropDownINPUTValue !=
                                                '')) {
                                      logFirebaseEvent('Button_backend_call');

                                      var forumnsRecordReference =
                                          ForumnsRecord.collection.doc();
                                      await forumnsRecordReference.set({
                                        ...createForumnsRecordData(
                                          courseNumber: _model
                                              .courseNumberINPUTTextController
                                              .text,
                                          courseMajor:
                                              _model.majorDropDownINPUTValue,
                                          createdDT: getCurrentTimestamp,
                                          userInteractCOUNT: 1,
                                          lastMessage: '(Forum Created)',
                                          lastMessageDT: getCurrentTimestamp,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'usersInteract': [
                                              currentUserReference
                                            ],
                                          },
                                        ),
                                      });
                                      _model.newForumn =
                                          ForumnsRecord.getDocumentFromData({
                                        ...createForumnsRecordData(
                                          courseNumber: _model
                                              .courseNumberINPUTTextController
                                              .text,
                                          courseMajor:
                                              _model.majorDropDownINPUTValue,
                                          createdDT: getCurrentTimestamp,
                                          userInteractCOUNT: 1,
                                          lastMessage: '(Forum Created)',
                                          lastMessageDT: getCurrentTimestamp,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'usersInteract': [
                                              currentUserReference
                                            ],
                                          },
                                        ),
                                      }, forumnsRecordReference);
                                      logFirebaseEvent('Button_navigate_to');

                                      context.goNamed(
                                        ForumnChatPageWidget.routeName,
                                        queryParameters: {
                                          'forumnRef': serializeParam(
                                            _model.newForumn?.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.bottomToTop,
                                          ),
                                        },
                                      );
                                    } else {
                                      logFirebaseEvent('Button_alert_dialog');
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Error'),
                                            content: Text(
                                                'Must have Major and Course Set'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  } else {
                                    logFirebaseEvent('Button_alert_dialog');
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Error'),
                                          content: Text(
                                              'Forum for that course already exists'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                text: 'Create Forum',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              );
                            },
                          ),
                        ),
                      if (!_model.uniqueCourse)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 32.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'FORUMN_C_R_E_A_T_E_CREATE_FORUM_BTN_ON_T');
                              logFirebaseEvent('Button_alert_dialog');
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Error!'),
                                    content: Text(
                                        'Missing Major / Course or Course Forum already exists.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            text: 'Create Forum',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 50.0,
                              padding: EdgeInsets.all(8.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x60F4A261),
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
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                    ],
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
