import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'delete_availability_model.dart';
export 'delete_availability_model.dart';

class DeleteAvailabilityWidget extends StatefulWidget {
  const DeleteAvailabilityWidget({
    super.key,
    this.dayIndex,
    required this.availDoc,
    this.timeIndex,
  });

  final int? dayIndex;
  final DayTimeAvailabilityRecord? availDoc;
  final int? timeIndex;

  @override
  State<DeleteAvailabilityWidget> createState() =>
      _DeleteAvailabilityWidgetState();
}

class _DeleteAvailabilityWidgetState extends State<DeleteAvailabilityWidget> {
  late DeleteAvailabilityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteAvailabilityModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DayTimeAvailabilityRecord>>(
      stream: queryDayTimeAvailabilityRecord(
        singleRecord: true,
      ),
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
        List<DayTimeAvailabilityRecord> containerDayTimeAvailabilityRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerDayTimeAvailabilityRecord =
            containerDayTimeAvailabilityRecordList.isNotEmpty
                ? containerDayTimeAvailabilityRecordList.first
                : null;

        return Container(
          width: double.infinity,
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
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 50.0,
                        icon: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 40.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'DELETE_AVAILABILITY_close_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_bottom_sheet');
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Remove Availability',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Inter Tight',
                          fontSize: 28.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    decoration: BoxDecoration(
                      color: Color(0xD2E0E0E0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 7.0, 0.0, 7.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.availDoc?.day
                                  .elementAtOrNull(widget.dayIndex!),
                              'Day',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Inter',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 7.0, 0.0, 7.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.availDoc?.availableTime
                                  .elementAtOrNull(widget.timeIndex!),
                              'time',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Inter',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: StreamBuilder<List<TutorsRecord>>(
                      stream: queryTutorsRecord(
                        singleRecord: true,
                      ),
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
                        List<TutorsRecord> buttonTutorsRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final buttonTutorsRecord =
                            buttonTutorsRecordList.isNotEmpty
                                ? buttonTutorsRecordList.first
                                : null;

                        return FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'DELETE_AVAILABILITY_DELETE_BTN_ON_TAP');
                            logFirebaseEvent('Button_backend_call');
                            await containerDayTimeAvailabilityRecord!.reference
                                .delete();
                            logFirebaseEvent('Button_bottom_sheet');
                            Navigator.pop(context);
                          },
                          text: 'Delete',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconAlignment: IconAlignment.start,
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).error,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
        );
      },
    );
  }
}
