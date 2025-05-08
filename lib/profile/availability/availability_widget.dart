import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'availability_model.dart';
export 'availability_model.dart';

class AvailabilityWidget extends StatefulWidget {
  const AvailabilityWidget({
    super.key,
    required this.tutorDoc,
  });

  final TutorsRecord? tutorDoc;

  static String routeName = 'Availability';
  static String routePath = '/availability';

  @override
  State<AvailabilityWidget> createState() => _AvailabilityWidgetState();
}

class _AvailabilityWidgetState extends State<AvailabilityWidget> {
  late AvailabilityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvailabilityModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Availability'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            borderRadius: 20.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('AVAILABILITY_arrow_back_rounded_ICN_ON_T');
              logFirebaseEvent('IconButton_navigate_to');

              context.goNamed(TutorProfileWidget.routeName);
            },
          ),
          title: Text(
            'Set Availability',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 22.0,
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
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 40.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                    child: Text(
                      'Let others know when you\'re available',
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
                  Container(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            height: 95.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x10000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.today_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Monday',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_vixyp16u_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked1Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked1Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked1 =
                                                        DateTime(
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
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  0,
                                                  (e) => e
                                                    ..startTime =
                                                        _model.datePicked1,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(0)
                                                            ?.startTime ==
                                                        null
                                                    ? 'Start Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(0)!
                                                            .hasStartTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    0)
                                                                ?.startTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked1)),
                                                'Start Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 106.6,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_e90jchtd_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked2Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked2Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked2 =
                                                        DateTime(
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
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  0,
                                                  (e) => e
                                                    ..endTime =
                                                        _model.datePicked2,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(0)
                                                            ?.endTime ==
                                                        null
                                                    ? 'End Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(0)!
                                                            .hasEndTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    0)
                                                                ?.endTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked2)),
                                                'End Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'AVAILABILITY_delete_outline_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_update_app_state');
                                            FFAppState()
                                                .updateAvailabilityAtIndex(
                                              0,
                                              (e) => e
                                                ..startTime = null
                                                ..endTime = null,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            height: 95.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x10000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.today_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Tuesday',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_y76iacv5_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked3Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked3Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked3 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked3Time.hour,
                                                      _datePicked3Time.minute,
                                                    );
                                                  });
                                                } else if (_model.datePicked3 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked3 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  1,
                                                  (e) => e
                                                    ..startTime =
                                                        _model.datePicked3,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(1)
                                                            ?.startTime ==
                                                        null
                                                    ? 'Start Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(1)!
                                                            .hasStartTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    1)
                                                                ?.startTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked3)),
                                                'Start Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 106.62,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_3qnq902d_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked4Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked4Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked4 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked4Time.hour,
                                                      _datePicked4Time.minute,
                                                    );
                                                  });
                                                } else if (_model.datePicked4 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked4 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  1,
                                                  (e) => e
                                                    ..endTime =
                                                        _model.datePicked4,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(1)
                                                            ?.endTime ==
                                                        null
                                                    ? 'End Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(1)!
                                                            .hasEndTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    1)
                                                                ?.endTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked4)),
                                                'End Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'AVAILABILITY_delete_outline_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_update_app_state');
                                            FFAppState()
                                                .updateAvailabilityAtIndex(
                                              1,
                                              (e) => e
                                                ..startTime = null
                                                ..endTime = null,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            height: 95.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x10000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.today_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Wednesday',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_ul6jpd9m_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked5Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked5Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked5 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked5Time.hour,
                                                      _datePicked5Time.minute,
                                                    );
                                                  });
                                                } else if (_model.datePicked5 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked5 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  2,
                                                  (e) => e
                                                    ..startTime =
                                                        _model.datePicked5,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(2)
                                                            ?.startTime ==
                                                        null
                                                    ? 'Start Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(2)!
                                                            .hasStartTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    2)
                                                                ?.startTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked5)),
                                                'Start Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 106.62,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_3itclaca_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked6Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked6Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked6 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked6Time.hour,
                                                      _datePicked6Time.minute,
                                                    );
                                                  });
                                                } else if (_model.datePicked6 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked6 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  2,
                                                  (e) => e
                                                    ..endTime =
                                                        _model.datePicked6,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(2)
                                                            ?.endTime ==
                                                        null
                                                    ? 'End Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(2)!
                                                            .hasEndTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    2)
                                                                ?.endTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked6)),
                                                'End Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'AVAILABILITY_delete_outline_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_update_app_state');
                                            FFAppState()
                                                .updateAvailabilityAtIndex(
                                              2,
                                              (e) => e
                                                ..startTime = null
                                                ..endTime = null,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            height: 95.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x10000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.today_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Thursday',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_b3pdu0qv_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked7Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked7Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked7 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked7Time.hour,
                                                      _datePicked7Time.minute,
                                                    );
                                                  });
                                                } else if (_model.datePicked7 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked7 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  3,
                                                  (e) => e
                                                    ..startTime =
                                                        _model.datePicked7,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(3)
                                                            ?.startTime ==
                                                        null
                                                    ? 'Start Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(3)!
                                                            .hasStartTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    3)
                                                                ?.startTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked7)),
                                                'Start Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 106.62,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_4qg0krn3_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked8Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked8Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked8 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked8Time.hour,
                                                      _datePicked8Time.minute,
                                                    );
                                                  });
                                                } else if (_model.datePicked8 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked8 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  3,
                                                  (e) => e
                                                    ..endTime =
                                                        _model.datePicked8,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(3)
                                                            ?.endTime ==
                                                        null
                                                    ? 'End Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(3)!
                                                            .hasEndTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    3)
                                                                ?.endTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked8)),
                                                'End Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'AVAILABILITY_delete_outline_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_update_app_state');
                                            FFAppState()
                                                .updateAvailabilityAtIndex(
                                              3,
                                              (e) => e
                                                ..startTime = null
                                                ..endTime = null,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            height: 95.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x10000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.today_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Friday',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_bliksxms_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked9Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked9Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked9 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked9Time.hour,
                                                      _datePicked9Time.minute,
                                                    );
                                                  });
                                                } else if (_model.datePicked9 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked9 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  4,
                                                  (e) => e
                                                    ..startTime =
                                                        _model.datePicked9,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(4)
                                                            ?.startTime ==
                                                        null
                                                    ? 'Start Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(4)!
                                                            .hasStartTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    4)
                                                                ?.startTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked9)),
                                                'Start Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 106.62,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_2gs2k93o_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked10Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked10Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked10 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked10Time.hour,
                                                      _datePicked10Time.minute,
                                                    );
                                                  });
                                                } else if (_model
                                                        .datePicked10 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked10 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  4,
                                                  (e) => e
                                                    ..endTime =
                                                        _model.datePicked10,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(4)
                                                            ?.endTime ==
                                                        null
                                                    ? 'End Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(4)!
                                                            .hasEndTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    4)
                                                                ?.endTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked10)),
                                                'End Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'AVAILABILITY_delete_outline_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_update_app_state');
                                            FFAppState()
                                                .updateAvailabilityAtIndex(
                                              4,
                                              (e) => e
                                                ..startTime = null
                                                ..endTime = null,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            height: 95.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x10000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.today_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Saturday',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_95sv6wvz_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked11Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked11Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked11 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked11Time.hour,
                                                      _datePicked11Time.minute,
                                                    );
                                                  });
                                                } else if (_model
                                                        .datePicked11 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked11 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  5,
                                                  (e) => e
                                                    ..startTime =
                                                        _model.datePicked11,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(5)
                                                            ?.startTime ==
                                                        null
                                                    ? 'Start Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(5)!
                                                            .hasStartTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    5)
                                                                ?.startTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked11)),
                                                'Start Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 106.62,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_trjkrhfm_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked12Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked12Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked12 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked12Time.hour,
                                                      _datePicked12Time.minute,
                                                    );
                                                  });
                                                } else if (_model
                                                        .datePicked12 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked12 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  5,
                                                  (e) => e
                                                    ..endTime =
                                                        _model.datePicked12,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(5)
                                                            ?.endTime ==
                                                        null
                                                    ? 'End Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(5)!
                                                            .hasEndTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    5)
                                                                ?.endTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked12)),
                                                'End Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'AVAILABILITY_delete_outline_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_update_app_state');
                                            FFAppState()
                                                .updateAvailabilityAtIndex(
                                              5,
                                              (e) => e
                                                ..startTime = null
                                                ..endTime = null,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            height: 95.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x10000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.today_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Sunday',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_waguyywt_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked13Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked13Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked13 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked13Time.hour,
                                                      _datePicked13Time.minute,
                                                    );
                                                  });
                                                } else if (_model
                                                        .datePicked13 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked13 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  6,
                                                  (e) => e
                                                    ..startTime =
                                                        _model.datePicked13,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(6)
                                                            ?.startTime ==
                                                        null
                                                    ? 'Start Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(6)!
                                                            .hasStartTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    6)
                                                                ?.startTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked13)),
                                                'Start Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 106.62,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'AVAILABILITY_PAGE_Button_43tw7bld_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_date_time_picker');

                                                final _datePicked14Time =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime:
                                                      TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp),
                                                  builder: (context, child) {
                                                    return wrapInMaterialTimePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );
                                                if (_datePicked14Time != null) {
                                                  safeSetState(() {
                                                    _model.datePicked14 =
                                                        DateTime(
                                                      getCurrentTimestamp.year,
                                                      getCurrentTimestamp.month,
                                                      getCurrentTimestamp.day,
                                                      _datePicked14Time.hour,
                                                      _datePicked14Time.minute,
                                                    );
                                                  });
                                                } else if (_model
                                                        .datePicked14 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked14 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState()
                                                    .updateAvailabilityAtIndex(
                                                  6,
                                                  (e) => e
                                                    ..endTime =
                                                        _model.datePicked14,
                                                );
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .availability
                                                            .elementAtOrNull(6)
                                                            ?.endTime ==
                                                        null
                                                    ? 'End Time'
                                                    : (FFAppState()
                                                            .availability
                                                            .elementAtOrNull(6)!
                                                            .hasEndTime()
                                                        ? dateTimeFormat(
                                                            "jm",
                                                            FFAppState()
                                                                .availability
                                                                .elementAtOrNull(
                                                                    6)
                                                                ?.endTime)
                                                        : dateTimeFormat(
                                                            "jm",
                                                            _model
                                                                .datePicked14)),
                                                'End Time',
                                              ),
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 20.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x00F1F4F8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'AVAILABILITY_delete_outline_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_update_app_state');
                                            FFAppState()
                                                .updateAvailabilityAtIndex(
                                              6,
                                              (e) => e
                                                ..startTime = null
                                                ..endTime = null,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'AVAILABILITY_SAVE_AVAILABILITY_BTN_ON_TA');
                              logFirebaseEvent('Button_backend_call');

                              await widget.tutorDoc!.reference.update({
                                ...mapToFirestore(
                                  {
                                    'availability':
                                        getAvailabilityListFirestoreData(
                                      FFAppState().availability,
                                    ),
                                  },
                                ),
                              });
                              logFirebaseEvent('Button_navigate_to');

                              context.goNamed(TutorProfileWidget.routeName);
                            },
                            text: 'Save Availability',
                            options: FFButtonOptions(
                              width: 310.0,
                              height: 50.0,
                              padding: EdgeInsets.all(8.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
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
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
