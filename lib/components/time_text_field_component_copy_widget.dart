import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'time_text_field_component_copy_model.dart';
export 'time_text_field_component_copy_model.dart';

class TimeTextFieldComponentCopyWidget extends StatefulWidget {
  const TimeTextFieldComponentCopyWidget({
    super.key,
    required this.time,
    required this.timeIndex,
  });

  final DayTimeAvailabilityRecord? time;
  final int? timeIndex;

  @override
  State<TimeTextFieldComponentCopyWidget> createState() =>
      _TimeTextFieldComponentCopyWidgetState();
}

class _TimeTextFieldComponentCopyWidgetState
    extends State<TimeTextFieldComponentCopyWidget> {
  late TimeTextFieldComponentCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeTextFieldComponentCopyModel());

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
      width: 131.12,
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('TIME_TEXT_FIELD_COMPONENT_COPY_Row_jtu3m');
          logFirebaseEvent('Row_date_time_picker');
          final _datePickedDate = await showDatePicker(
            context: context,
            initialDate: getCurrentTimestamp,
            firstDate: getCurrentTimestamp,
            lastDate: DateTime(2050),
            builder: (context, child) {
              return wrapInMaterialDatePickerTheme(
                context,
                child!,
                headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                headerForegroundColor: FlutterFlowTheme.of(context).info,
                headerTextStyle:
                    FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Inter Tight',
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                pickerBackgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                selectedDateTimeBackgroundColor:
                    FlutterFlowTheme.of(context).primary,
                selectedDateTimeForegroundColor:
                    FlutterFlowTheme.of(context).info,
                actionButtonForegroundColor:
                    FlutterFlowTheme.of(context).primaryText,
                iconSize: 24.0,
              );
            },
          );

          TimeOfDay? _datePickedTime;
          if (_datePickedDate != null) {
            _datePickedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.fromDateTime(getCurrentTimestamp),
              builder: (context, child) {
                return wrapInMaterialTimePickerTheme(
                  context,
                  child!,
                  headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                  headerForegroundColor: FlutterFlowTheme.of(context).info,
                  headerTextStyle:
                      FlutterFlowTheme.of(context).headlineLarge.override(
                            fontFamily: 'Inter Tight',
                            fontSize: 32.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                  pickerBackgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  pickerForegroundColor:
                      FlutterFlowTheme.of(context).primaryText,
                  selectedDateTimeBackgroundColor:
                      FlutterFlowTheme.of(context).primary,
                  selectedDateTimeForegroundColor:
                      FlutterFlowTheme.of(context).info,
                  actionButtonForegroundColor:
                      FlutterFlowTheme.of(context).primaryText,
                  iconSize: 24.0,
                );
              },
            );
          }

          if (_datePickedDate != null && _datePickedTime != null) {
            safeSetState(() {
              _model.datePicked = DateTime(
                _datePickedDate.year,
                _datePickedDate.month,
                _datePickedDate.day,
                _datePickedTime!.hour,
                _datePickedTime.minute,
              );
            });
          } else if (_model.datePicked != null) {
            safeSetState(() {
              _model.datePicked = getCurrentTimestamp;
            });
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.time?.availableTime
                      .elementAtOrNull(widget.timeIndex!),
                  'Time',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
