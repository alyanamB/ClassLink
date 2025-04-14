import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'filter_study_sessions_model.dart';
export 'filter_study_sessions_model.dart';

class FilterStudySessionsWidget extends StatefulWidget {
  const FilterStudySessionsWidget({
    super.key,
    required this.filterMajor,
    required this.filterCourseNum,
    required this.filterTime,
  });

  final String? filterMajor;
  final String? filterCourseNum;
  final String? filterTime;

  @override
  State<FilterStudySessionsWidget> createState() =>
      _FilterStudySessionsWidgetState();
}

class _FilterStudySessionsWidgetState extends State<FilterStudySessionsWidget> {
  late FilterStudySessionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterStudySessionsModel());

    _model.courseNumberOptBoxTextController ??=
        TextEditingController(text: widget.filterCourseNum);
    _model.courseNumberOptBoxFocusNode ??= FocusNode();

    _model.timeOptBoxTextController ??= TextEditingController();
    _model.timeOptBoxFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 400.0,
      decoration: BoxDecoration(
        color: Color(0xFFFFE7C7),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlutterFlowDropDown<String>(
            controller: _model.majorOptBoxValueController ??=
                FormFieldController<String>(
              _model.majorOptBoxValue ??= widget.filterMajor,
            ),
            options: [
              'Undecided',
              'Art',
              'Business',
              'Computer Science',
              'Communications',
              'Economics',
              'Engineering',
              'Nursing',
              'Physics',
              'Psychology',
              'Spanish',
              'Other...'
            ],
            onChanged: (val) =>
                safeSetState(() => _model.majorOptBoxValue = val),
            width: 200.0,
            height: 40.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
            hintText: 'Major...',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 2.0,
            borderColor: Colors.transparent,
            borderWidth: 0.0,
            borderRadius: 8.0,
            margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            hidesUnderline: true,
            isOverButton: false,
            isSearchable: false,
            isMultiSelect: false,
          ),
          Container(
            width: 200.0,
            child: TextFormField(
              controller: _model.courseNumberOptBoxTextController,
              focusNode: _model.courseNumberOptBoxFocusNode,
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                isDense: true,
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Course Number...',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              cursorColor: FlutterFlowTheme.of(context).primaryText,
              validator: _model.courseNumberOptBoxTextControllerValidator
                  .asValidator(context),
            ),
          ),
          Container(
            width: 200.0,
            child: TextFormField(
              controller: _model.timeOptBoxTextController,
              focusNode: _model.timeOptBoxFocusNode,
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                isDense: true,
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Time...',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              keyboardType: TextInputType.datetime,
              cursorColor: FlutterFlowTheme.of(context).primaryText,
              validator:
                  _model.timeOptBoxTextControllerValidator.asValidator(context),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'FILTER_STUDY_SESSIONS_ApplyFilter_ON_TAP');
                      logFirebaseEvent('ApplyFilter_update_app_state');
                      FFAppState().ssfilterMajor =
                          valueOrDefault(currentUserDocument?.major, '');
                      FFAppState().ssfilterCourseNum = '';
                      FFAppState().ssfilterTime = '';
                      _model.updatePage(() {});
                      logFirebaseEvent('ApplyFilter_bottom_sheet');
                      Navigator.pop(context);
                    },
                    text: 'Reset',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'FILTER_STUDY_SESSIONS_ApplyFilter_ON_TAP');
                      if ((_model.majorOptBoxValue != null &&
                              _model.majorOptBoxValue != '') ||
                          (/* NOT RECOMMENDED */ _model
                                  .courseNumberOptBoxTextController.text ==
                              'true')) {
                        if ((_model.majorOptBoxValue != null &&
                                _model.majorOptBoxValue != '') &&
                            (_model.courseNumberOptBoxTextController.text !=
                                    '')) {
                          logFirebaseEvent('ApplyFilter_update_app_state');
                          FFAppState().ssfilterMajor = _model.majorOptBoxValue!;
                          FFAppState().ssfilterCourseNum =
                              _model.courseNumberOptBoxTextController.text;
                          _model.updatePage(() {});
                        } else {
                          if (_model.majorOptBoxValue != null &&
                              _model.majorOptBoxValue != '') {
                            logFirebaseEvent('ApplyFilter_update_app_state');
                            FFAppState().ssfilterMajor =
                                _model.majorOptBoxValue!;
                            _model.updatePage(() {});
                          } else {
                            logFirebaseEvent('ApplyFilter_update_app_state');
                            FFAppState().ssfilterCourseNum =
                                _model.courseNumberOptBoxTextController.text;
                            _model.updatePage(() {});
                          }
                        }

                        logFirebaseEvent('ApplyFilter_bottom_sheet');
                        Navigator.pop(context);
                      }
                    },
                    text: 'Apply Filter',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
          ),
        ],
      ),
    );
  }
}
