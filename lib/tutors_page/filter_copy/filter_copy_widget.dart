import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'filter_copy_model.dart';
export 'filter_copy_model.dart';

class FilterCopyWidget extends StatefulWidget {
  const FilterCopyWidget({
    super.key,
    required this.fMajor,
    required this.fCourseNum,
  });

  final String? fMajor;
  final String? fCourseNum;

  @override
  State<FilterCopyWidget> createState() => _FilterCopyWidgetState();
}

class _FilterCopyWidgetState extends State<FilterCopyWidget> {
  late FilterCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterCopyModel());

    _model.courseNumberTextController ??= TextEditingController();
    _model.courseNumberFocusNode ??= FocusNode();

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
            controller: _model.majorValueController ??=
                FormFieldController<String>(null),
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
            onChanged: (val) => safeSetState(() => _model.majorValue = val),
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
              controller: _model.courseNumberTextController,
              focusNode: _model.courseNumberFocusNode,
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
              validator: _model.courseNumberTextControllerValidator
                  .asValidator(context),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('FILTER_COPY_COMP_ApplyFilter_ON_TAP');
                      logFirebaseEvent('ApplyFilter_update_app_state');
                      FFAppState().tFilterMajor = _model.majorValue!;
                      FFAppState().tFilterCourseNum =
                          _model.courseNumberTextController.text;
                      _model.updatePage(() {});
                      logFirebaseEvent('ApplyFilter_bottom_sheet');
                      Navigator.pop(context);
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
