import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'availability_temp_model.dart';
export 'availability_temp_model.dart';

class AvailabilityTempWidget extends StatefulWidget {
  const AvailabilityTempWidget({
    super.key,
    required this.availabilityDoc,
  });

  final DayTimeAvailabilityRecord? availabilityDoc;

  @override
  State<AvailabilityTempWidget> createState() => _AvailabilityTempWidgetState();
}

class _AvailabilityTempWidgetState extends State<AvailabilityTempWidget> {
  late AvailabilityTempModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvailabilityTempModel());

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
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'AVAILABILITY_TEMP_Icon_79n2qlo0_ON_TAP');
                      logFirebaseEvent('Icon_bottom_sheet');
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                  ),
                ),
                Text(
                  'Availibility',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Roboto',
                        letterSpacing: 0.0,
                      ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                              spreadRadius: 0.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'M',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 25.6,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFF2F4),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16.0),
                                        bottomRight: Radius.circular(16.0),
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'AVAILABILITY_TEMP_Text_l5cv5l65_ON_TAP');
                                          logFirebaseEvent(
                                              'Text_date_time_picker');

                                          final _datePicked1Time =
                                              await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.fromDateTime(
                                                getCurrentTimestamp),
                                            builder: (context, child) {
                                              return wrapInMaterialTimePickerTheme(
                                                context,
                                                child!,
                                                headerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                headerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                headerTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          fontSize: 32.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                pickerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                pickerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                selectedDateTimeBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                selectedDateTimeForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                actionButtonForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                iconSize: 24.0,
                                              );
                                            },
                                          );
                                          if (_datePicked1Time != null) {
                                            safeSetState(() {
                                              _model.datePicked1 = DateTime(
                                                getCurrentTimestamp.year,
                                                getCurrentTimestamp.month,
                                                getCurrentTimestamp.day,
                                                _datePicked1Time.hour,
                                                _datePicked1Time.minute,
                                              );
                                            });
                                          } else if (_model.datePicked1 !=
                                              null) {
                                            safeSetState(() {
                                              _model.datePicked1 =
                                                  getCurrentTimestamp;
                                            });
                                          }
                                          logFirebaseEvent('Text_backend_call');

                                          await containerDayTimeAvailabilityRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'startTime':
                                                    FieldValue.arrayUnion(
                                                        [_model.datePicked1]),
                                              },
                                            ),
                                          });
                                        },
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.datePicked1?.toString(),
                                            '9:00AM',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '-',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 25.6,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFF2F4),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16.0),
                                        bottomRight: Radius.circular(16.0),
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'AVAILABILITY_TEMP_Text_n69v0rdn_ON_TAP');
                                          logFirebaseEvent(
                                              'Text_date_time_picker');

                                          final _datePicked2Time =
                                              await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.fromDateTime(
                                                getCurrentTimestamp),
                                            builder: (context, child) {
                                              return wrapInMaterialTimePickerTheme(
                                                context,
                                                child!,
                                                headerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                headerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                headerTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          fontSize: 32.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                pickerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                pickerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                selectedDateTimeBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                selectedDateTimeForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                actionButtonForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                iconSize: 24.0,
                                              );
                                            },
                                          );
                                          if (_datePicked2Time != null) {
                                            safeSetState(() {
                                              _model.datePicked2 = DateTime(
                                                getCurrentTimestamp.year,
                                                getCurrentTimestamp.month,
                                                getCurrentTimestamp.day,
                                                _datePicked2Time.hour,
                                                _datePicked2Time.minute,
                                              );
                                            });
                                          } else if (_model.datePicked2 !=
                                              null) {
                                            safeSetState(() {
                                              _model.datePicked2 =
                                                  getCurrentTimestamp;
                                            });
                                          }
                                          logFirebaseEvent('Text_backend_call');

                                          await containerDayTimeAvailabilityRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'endTime':
                                                    FieldValue.arrayUnion(
                                                        [_model.datePicked2]),
                                              },
                                            ),
                                          });
                                        },
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.datePicked2?.toString(),
                                            '5:00PM',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 16.0))
                      .addToEnd(SizedBox(height: 16.0)),
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        );
      },
    );
  }
}
