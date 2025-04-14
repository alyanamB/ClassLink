import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'add_availability_model.dart';
export 'add_availability_model.dart';

class AddAvailabilityWidget extends StatefulWidget {
  const AddAvailabilityWidget({
    super.key,
    required this.availabilityDoc,
  });

  final DayTimeAvailabilityRecord? availabilityDoc;

  @override
  State<AddAvailabilityWidget> createState() => _AddAvailabilityWidgetState();
}

class _AddAvailabilityWidgetState extends State<AddAvailabilityWidget> {
  late AddAvailabilityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddAvailabilityModel());

    _model.dayTextInputTextController ??= TextEditingController();
    _model.dayTextInputFocusNode ??= FocusNode();

    _model.timeInputTextController ??= TextEditingController();
    _model.timeInputFocusNode ??= FocusNode();

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
      height: 350.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryText,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('ADD_AVAILABILITY_CloseIconButton_ON_TAP');
                    logFirebaseEvent('CloseIconButton_bottom_sheet');
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Text(
                'Add Availability',
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Inter Tight',
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Container(
                      width: 130.0,
                      child: TextFormField(
                        controller: _model.dayTextInputTextController,
                        focusNode: _model.dayTextInputFocusNode,
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Day...',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 26.0, 24.0, 26.0),
                          suffixIcon: Icon(
                            Icons.today_sharp,
                            size: 30.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.dayTextInputTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Container(
                      width: 200.0,
                      child: TextFormField(
                        controller: _model.timeInputTextController,
                        focusNode: _model.timeInputFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Time Frame...',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 26.0, 24.0, 26.0),
                          suffixIcon: Icon(
                            Icons.timelapse_sharp,
                            size: 30.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.timeInputTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('ADD_AVAILABILITY_COMP_ADD_BTN_ON_TAP');
                    logFirebaseEvent('Button_backend_call');

                    await widget.availabilityDoc!.reference.update({
                      ...mapToFirestore(
                        {
                          'day': FieldValue.arrayUnion(
                              [_model.dayTextInputTextController.text]),
                          'availableTime': FieldValue.arrayUnion(
                              [_model.timeInputTextController.text]),
                        },
                      ),
                    });
                    logFirebaseEvent('Button_bottom_sheet');
                    Navigator.pop(context);
                  },
                  text: 'Add',
                  icon: Icon(
                    Icons.post_add,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 35.0,
                  ),
                  options: FFButtonOptions(
                    width: 150.0,
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconAlignment: IconAlignment.start,
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter Tight',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
