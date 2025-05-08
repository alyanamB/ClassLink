import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'filter_forumns_model.dart';
export 'filter_forumns_model.dart';

class FilterForumnsWidget extends StatefulWidget {
  const FilterForumnsWidget({
    super.key,
    required this.filterMajor,
    required this.filterCourseNum,
  });

  final String? filterMajor;
  final String? filterCourseNum;

  @override
  State<FilterForumnsWidget> createState() => _FilterForumnsWidgetState();
}

class _FilterForumnsWidgetState extends State<FilterForumnsWidget> {
  late FilterForumnsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterForumnsModel());

    _model.courseNumberOptBoxTextController ??=
        TextEditingController(text: widget.filterCourseNum);
    _model.courseNumberOptBoxFocusNode ??= FocusNode();

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
      height: 304.93,
      decoration: BoxDecoration(
        color: Color(0xFFFFE7C7),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
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
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                  hintText: 'Course Number...',
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
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
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator: _model.courseNumberOptBoxTextControllerValidator
                    .asValidator(context),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('FILTER_FORUMNS_COMP_Reset_ON_TAP');
                        logFirebaseEvent('Reset_update_app_state');
                        FFAppState().frmnFilterMAJOR =
                            valueOrDefault(currentUserDocument?.major, '');
                        FFAppState().frmnFilterCOURSE = '';
                        _model.updatePage(() {});
                        logFirebaseEvent('Reset_bottom_sheet');
                        Navigator.pop(context);
                      },
                      text: 'Reset',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).error,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'FILTER_FORUMNS_COMP_ApplyFilter_ON_TAP');
                        if ((_model.majorOptBoxValue != null &&
                                _model.majorOptBoxValue != '') ||
                            (/* NOT RECOMMENDED */ _model
                                    .courseNumberOptBoxTextController.text ==
                                'true')) {
                          if ((_model.majorOptBoxValue != null &&
                                  _model.majorOptBoxValue != '') &&
                              (_model.courseNumberOptBoxTextController
                                          .text !=
                                      '')) {
                            logFirebaseEvent('ApplyFilter_set_form_field');
                            safeSetState(() {
                              _model.courseNumberOptBoxTextController?.text =
                                  functions.courseFormatting(_model
                                      .courseNumberOptBoxTextController.text)!;
                            });
                            logFirebaseEvent('ApplyFilter_update_app_state');
                            FFAppState().frmnFilterMAJOR =
                                _model.majorOptBoxValue!;
                            FFAppState().frmnFilterCOURSE =
                                _model.courseNumberOptBoxTextController.text;
                            _model.updatePage(() {});
                          } else {
                            if (_model.majorOptBoxValue != null &&
                                _model.majorOptBoxValue != '') {
                              logFirebaseEvent('ApplyFilter_update_app_state');
                              FFAppState().frmnFilterMAJOR =
                                  _model.majorOptBoxValue!;
                              _model.updatePage(() {});
                            } else {
                              logFirebaseEvent('ApplyFilter_set_form_field');
                              safeSetState(() {
                                _model.courseNumberOptBoxTextController?.text =
                                    functions.courseFormatting(
                                        widget.filterCourseNum)!;
                              });
                              logFirebaseEvent('ApplyFilter_update_app_state');
                              FFAppState().frmnFilterCOURSE =
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                  ],
                ),
              ),
            ),
          ].divide(SizedBox(height: 30.0)),
        ),
      ),
    );
  }
}
