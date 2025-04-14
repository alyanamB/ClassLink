import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  static String routeName = 'profile';
  static String routePath = '/profile';

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'profile'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TutorsRecord>>(
      stream: queryTutorsRecord(
        queryBuilder: (tutorsRecord) => tutorsRecord.where(
          'user',
          isEqualTo: currentUserReference,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<TutorsRecord> profileTutorsRecordList = snapshot.data!;
        final profileTutorsRecord = profileTutorsRecordList.isNotEmpty
            ? profileTutorsRecordList.first
            : null;

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
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderRadius: 20.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: Icon(
                                Icons.arrow_back,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'PROFILE_PAGE_arrow_back_ICN_ON_TAP');
                                logFirebaseEvent('IconButton_navigate_to');

                                context.goNamed(ProfileTabWidget.routeName);
                              },
                            ),
                          ),
                          Text(
                            'Profile',
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(SizedBox(width: 78.0)),
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                currentUserPhoto,
                              ).image,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                currentUserPhoto,
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpzxSFAvJKwKCA3D8by93pnQMYKpKigJJQ4A&s',
                              ),
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => Text(
                          currentUserDisplayName,
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Text(
                        currentUserEmail,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => FlutterFlowDropDown<String>(
                          controller: _model.majorPfValueController ??=
                              FormFieldController<String>(
                            _model.majorPfValue ??=
                                valueOrDefault(currentUserDocument?.major, ''),
                          ),
                          options: [
                            'Undecided',
                            'Art',
                            'Business',
                            'Computer Science',
                            'Communications',
                            'Economics',
                            'Engineering ',
                            'Nursing',
                            'Physics ',
                            'Psychology',
                            'Spanish',
                            'Other...'
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.majorPfValue = val),
                          width: 200.0,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Major...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => FlutterFlowDropDown<String>(
                          controller: _model.academicStatusPFValueController ??=
                              FormFieldController<String>(
                            _model.academicStatusPFValue ??= valueOrDefault(
                                currentUserDocument?.academicStatus, ''),
                          ),
                          options: ['Undergraduate', 'Graduate', 'Alumni'],
                          onChanged: (val) => safeSetState(
                              () => _model.academicStatusPFValue = val),
                          width: 200.0,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Academic Status...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => FlutterFlowDropDown<String>(
                          controller: _model.yearPFValueController ??=
                              FormFieldController<String>(
                            _model.yearPFValue ??= valueOrDefault(
                                currentUserDocument?.academicYear, ''),
                          ),
                          options: ['Freshman', 'Sophmore', 'Junior', 'Senior'],
                          onChanged: (val) =>
                              safeSetState(() => _model.yearPFValue = val),
                          width: 200.0,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Academic Year...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('ChangePassButton pressed ...');
                        },
                        text: 'Change Password',
                        options: FFButtonOptions(
                          width: 200.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Inter Tight',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tutor',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor: Color(0xFF484848),
                              ),
                              child: Checkbox(
                                value: _model.tutorCheckboxValue ??=
                                    valueOrDefault<bool>(
                                        currentUserDocument?.tutorInterest,
                                        false),
                                onChanged: (newValue) async {
                                  safeSetState(() =>
                                      _model.tutorCheckboxValue = newValue!);
                                  if (newValue!) {
                                    logFirebaseEvent(
                                        'PROFILE_PAGE_TutorCheckbox_ON_TOGGLE_ON');
                                    logFirebaseEvent(
                                        'TutorCheckbox_google_analytics_event');
                                    logFirebaseEvent('tutor_checked');
                                  }
                                },
                                side: BorderSide(
                                  width: 2,
                                  color: Color(0xFF484848),
                                ),
                                activeColor: Color(0xFFF4A261),
                                checkColor: Color(0xFF484848),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 120.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 150.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'PROFILE_PAGE_UpdateAccountButton_ON_TAP');
                                if ((valueOrDefault<bool>(
                                            currentUserDocument?.tutorInterest,
                                            false) !=
                                        _model.tutorCheckboxValue) &&
                                    _model.tutorCheckboxValue!) {
                                  logFirebaseEvent(
                                      'UpdateAccountButton_backend_call');

                                  var tutorsRecordReference =
                                      TutorsRecord.collection.doc();
                                  await tutorsRecordReference
                                      .set(createTutorsRecordData(
                                    user: currentUserReference,
                                    displayName: currentUserDisplayName,
                                    major: valueOrDefault(
                                        currentUserDocument?.major, ''),
                                  ));
                                  _model.tutorDoc =
                                      TutorsRecord.getDocumentFromData(
                                          createTutorsRecordData(
                                            user: currentUserReference,
                                            displayName: currentUserDisplayName,
                                            major: valueOrDefault(
                                                currentUserDocument?.major, ''),
                                          ),
                                          tutorsRecordReference);
                                  logFirebaseEvent(
                                      'UpdateAccountButton_backend_call');

                                  await ModalityRecord.createDoc(
                                          _model.tutorDoc!.reference)
                                      .set(createModalityRecordData(
                                    remote: false,
                                    hybrid: false,
                                    inPerson: false,
                                  ));
                                } else {
                                  if ((valueOrDefault<bool>(
                                              currentUserDocument
                                                  ?.tutorInterest,
                                              false) !=
                                          _model.tutorCheckboxValue) &&
                                      !_model.tutorCheckboxValue!) {
                                    logFirebaseEvent(
                                        'UpdateAccountButton_backend_call');
                                    await profileTutorsRecord!.reference
                                        .delete();
                                  }
                                }

                                logFirebaseEvent(
                                    'UpdateAccountButton_backend_call');

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  major: _model.majorPfValue,
                                  academicStatus: _model.academicStatusPFValue,
                                  academicYear: _model.yearPFValue,
                                  tutorInterest: _model.tutorCheckboxValue,
                                ));
                                logFirebaseEvent(
                                    'UpdateAccountButton_navigate_to');

                                context.goNamed(ProfileTabWidget.routeName);

                                safeSetState(() {});
                              },
                              text: 'Update Account',
                              options: FFButtonOptions(
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 18.0)),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
