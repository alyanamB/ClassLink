import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'click_tutor_time_model.dart';
export 'click_tutor_time_model.dart';

class ClickTutorTimeWidget extends StatefulWidget {
  const ClickTutorTimeWidget({
    super.key,
    required this.tutorDoc,
  });

  final TutorsRecord? tutorDoc;

  @override
  State<ClickTutorTimeWidget> createState() => _ClickTutorTimeWidgetState();
}

class _ClickTutorTimeWidgetState extends State<ClickTutorTimeWidget> {
  late ClickTutorTimeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClickTutorTimeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 358.7,
          height: 270.93,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 40.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'CLICK_TUTOR_TIME_close_rounded_ICN_ON_TA');
                        logFirebaseEvent('IconButton_bottom_sheet');
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Text(
                    'Book this time?',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                  ),
                ),
                Text(
                  'Message this tutor now to confirm your tutoring session and get started with your learning journey!',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FontWeight.normal,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('CLICK_TUTOR_TIME_COMP_Message_ON_TAP');
                      logFirebaseEvent('Message_firestore_query');
                      _model.chatList = await queryChatsRecordOnce(
                        queryBuilder: (chatsRecord) => chatsRecord.where(
                          'users',
                          arrayContains: currentUserReference,
                        ),
                      );
                      logFirebaseEvent('Message_custom_action');
                      _model.existingChat =
                          await actions.findExistingChatAction(
                        _model.chatList!.toList(),
                        widget.tutorDoc!.user!,
                        currentUserReference!,
                      );
                      if (_model.existingChat != null) {
                        logFirebaseEvent('Message_navigate_to');

                        context.goNamed(
                          ChatPageWidget.routeName,
                          queryParameters: {
                            'chatRef': serializeParam(
                              _model.existingChat,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        logFirebaseEvent('Message_backend_call');

                        var chatsRecordReference = ChatsRecord.collection.doc();
                        await chatsRecordReference.set({
                          ...createChatsRecordData(
                            createdDT: getCurrentTimestamp,
                          ),
                          ...mapToFirestore(
                            {
                              'users': [currentUserReference],
                              'usernames': [currentUserDisplayName],
                            },
                          ),
                        });
                        _model.createdChatdoc =
                            ChatsRecord.getDocumentFromData({
                          ...createChatsRecordData(
                            createdDT: getCurrentTimestamp,
                          ),
                          ...mapToFirestore(
                            {
                              'users': [currentUserReference],
                              'usernames': [currentUserDisplayName],
                            },
                          ),
                        }, chatsRecordReference);
                        logFirebaseEvent('Message_backend_call');

                        await _model.createdChatdoc!.reference.update({
                          ...mapToFirestore(
                            {
                              'users': FieldValue.arrayUnion(
                                  [widget.tutorDoc?.user]),
                              'usernames': FieldValue.arrayUnion(
                                  [widget.tutorDoc?.displayName]),
                            },
                          ),
                        });
                        logFirebaseEvent('Message_navigate_to');

                        context.goNamed(
                          ChatPageWidget.routeName,
                          queryParameters: {
                            'chatRef': serializeParam(
                              _model.createdChatdoc?.reference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );
                      }

                      safeSetState(() {});
                    },
                    text: 'Message',
                    icon: Icon(
                      Icons.message,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 22.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
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
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
