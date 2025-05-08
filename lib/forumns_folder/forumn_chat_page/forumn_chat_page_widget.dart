import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'forumn_chat_page_model.dart';
export 'forumn_chat_page_model.dart';

class ForumnChatPageWidget extends StatefulWidget {
  const ForumnChatPageWidget({
    super.key,
    required this.forumnRef,
  });

  final DocumentReference? forumnRef;

  static String routeName = 'forumn_chatPage';
  static String routePath = '/forumnChatPage';

  @override
  State<ForumnChatPageWidget> createState() => _ForumnChatPageWidgetState();
}

class _ForumnChatPageWidgetState extends State<ForumnChatPageWidget> {
  late ForumnChatPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForumnChatPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'forumn_chatPage'});
    _model.sendingTextFieldTextController ??= TextEditingController();
    _model.sendingTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            borderColor: Colors.transparent,
            borderRadius: 12.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('FORUMN_CHAT_arrow_back_rounded_ICN_ON_TA');
              logFirebaseEvent('IconButton_navigate_back');
              context.safePop();
            },
          ),
          title: StreamBuilder<ForumnsRecord>(
            stream: ForumnsRecord.getDocument(widget.forumnRef!),
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

              final columnForumnsRecord = snapshot.data!;

              return Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      columnForumnsRecord.courseNumber,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                fontSize: 24.0,
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
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          columnForumnsRecord.userInteractCOUNT.toString(),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                        ),
                        Text(
                          ' User Iteraction',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: PagedListView<DocumentSnapshot<Object?>?,
                          ForumnsChatRecord>(
                        pagingController: _model.setListViewController(
                          ForumnsChatRecord.collection
                              .where(
                                'forumn_Ref',
                                isEqualTo: widget.forumnRef,
                              )
                              .orderBy('sent_DT', descending: true),
                        ),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        reverse: true,
                        scrollDirection: Axis.vertical,
                        builderDelegate:
                            PagedChildBuilderDelegate<ForumnsChatRecord>(
                          // Customize what your widget looks like when it's loading the first page.
                          firstPageProgressIndicatorBuilder: (_) => Center(
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
                          // Customize what your widget looks like when it's loading another page.
                          newPageProgressIndicatorBuilder: (_) => Center(
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

                          itemBuilder: (context, _, listViewIndex) {
                            final listViewForumnsChatRecord = _model
                                .listViewPagingController!
                                .itemList![listViewIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 2.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: FutureBuilder<
                                                List<UsersRecord>>(
                                              future: queryUsersRecordOnce(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord.where(
                                                  'uid',
                                                  isEqualTo:
                                                      listViewForumnsChatRecord
                                                          .sender?.id,
                                                ),
                                                singleRecord: true,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<UsersRecord>
                                                    rowUsersRecordList =
                                                    snapshot.data!;
                                                final rowUsersRecord =
                                                    rowUsersRecordList
                                                            .isNotEmpty
                                                        ? rowUsersRecordList
                                                            .first
                                                        : null;

                                                return Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  15.0,
                                                                  0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            rowUsersRecord
                                                                ?.photoUrl,
                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpzxSFAvJKwKCA3D8by93pnQMYKpKigJJQ4A&s',
                                                          ),
                                                          width: 45.0,
                                                          height: 45.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    rowUsersRecord
                                                                        ?.displayName,
                                                                    'John Doe',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .interTight(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .headlineSmall
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          if (listViewForumnsChatRecord
                                                                      .message !=
                                                                  '')
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          4.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listViewForumnsChatRecord
                                                                      .message,
                                                                  'A whole bunch of gibberish if you know what im talking about,',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (listViewForumnsChatRecord
                                                            .sender ==
                                                        currentUserReference)
                                                      FlutterFlowIconButton(
                                                        borderRadius: 8.0,
                                                        buttonSize: 40.0,
                                                        icon: Icon(
                                                          Icons.delete_forever,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'FORUMN_CHAT_delete_forever_ICN_ON_TAP');
                                                          logFirebaseEvent(
                                                              'IconButton_backend_call');
                                                          await listViewForumnsChatRecord
                                                              .reference
                                                              .delete();
                                                        },
                                                      ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                          if (listViewForumnsChatRecord.image !=
                                                  '')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 15.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'FORUMN_CHAT_Image_u1fumx69_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Image_expand_image');
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      child:
                                                          FlutterFlowExpandedImageView(
                                                        image: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            listViewForumnsChatRecord
                                                                .image,
                                                            'https://picsum.photos/seed/203/600',
                                                          ),
                                                          fit: BoxFit.contain,
                                                        ),
                                                        allowRotation: false,
                                                        tag: valueOrDefault<
                                                            String>(
                                                          listViewForumnsChatRecord
                                                              .image,
                                                          'https://picsum.photos/seed/203/600' +
                                                              '$listViewIndex',
                                                        ),
                                                        useHeroAnimation: true,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Hero(
                                                  tag: valueOrDefault<String>(
                                                    listViewForumnsChatRecord
                                                        .image,
                                                    'https://picsum.photos/seed/203/600' +
                                                        '$listViewIndex',
                                                  ),
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        listViewForumnsChatRecord
                                                            .image,
                                                        'https://picsum.photos/seed/203/600',
                                                      ),
                                                      height: 200.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat("M/d h:mm a",
                                            listViewForumnsChatRecord.sentDT),
                                        '0/0 0:00pm',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w300,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: StreamBuilder<ForumnsRecord>(
                            stream:
                                ForumnsRecord.getDocument(widget.forumnRef!),
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

                              final rowForumnsRecord = snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowIconButton(
                                    borderRadius: 12.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent4,
                                    icon: Icon(
                                      Icons.image,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'FORUMN_CHAT_attachImage_button_ON_TAP');
                                      logFirebaseEvent(
                                          'attachImage_button_upload_media_to_fireb');
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        safeSetState(() =>
                                            _model.isDataUploading = true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        var downloadUrls = <String>[];
                                        try {
                                          selectedUploadedFiles = selectedMedia
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                    height:
                                                        m.dimensions?.height,
                                                    width: m.dimensions?.width,
                                                    blurHash: m.blurHash,
                                                  ))
                                              .toList();

                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          _model.isDataUploading = false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                                selectedMedia.length &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          safeSetState(() {
                                            _model.uploadedLocalFile =
                                                selectedUploadedFiles.first;
                                            _model.uploadedFileUrl =
                                                downloadUrls.first;
                                          });
                                        } else {
                                          safeSetState(() {});
                                          return;
                                        }
                                      }
                                    },
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (_model.uploadedFileUrl != '')
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              _model.uploadedFileUrl,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        TextFormField(
                                          controller: _model
                                              .sendingTextFieldTextController,
                                          focusNode:
                                              _model.sendingTextFieldFocusNode,
                                          onFieldSubmitted: (_) async {
                                            logFirebaseEvent(
                                                'FORUMN_CHAT_sendingTextField_ON_TEXTFIEL');
                                            logFirebaseEvent(
                                                'sendingTextField_backend_call');

                                            var forumnsChatRecordReference =
                                                ForumnsChatRecord.collection
                                                    .doc();
                                            await forumnsChatRecordReference
                                                .set(
                                                    createForumnsChatRecordData(
                                              message: _model
                                                  .sendingTextFieldTextController
                                                  .text,
                                              sentDT: getCurrentTimestamp,
                                              sender: currentUserReference,
                                              forumnRef: widget.forumnRef,
                                            ));
                                            _model.sentMessageA = ForumnsChatRecord
                                                .getDocumentFromData(
                                                    createForumnsChatRecordData(
                                                      message: _model
                                                          .sendingTextFieldTextController
                                                          .text,
                                                      sentDT:
                                                          getCurrentTimestamp,
                                                      sender:
                                                          currentUserReference,
                                                      forumnRef:
                                                          widget.forumnRef,
                                                    ),
                                                    forumnsChatRecordReference);
                                            if (_model.uploadedFileUrl != '') {
                                              logFirebaseEvent(
                                                  'sendingTextField_backend_call');

                                              await _model
                                                  .sentMessageA!.reference
                                                  .update(
                                                      createForumnsChatRecordData(
                                                image: _model.uploadedFileUrl,
                                              ));
                                            }
                                            logFirebaseEvent(
                                                'sendingTextField_set_form_field');
                                            safeSetState(() {
                                              _model
                                                  .sendingTextFieldTextController
                                                  ?.text = '';
                                            });
                                            logFirebaseEvent(
                                                'sendingTextField_backend_call');

                                            await widget.forumnRef!
                                                .update(createForumnsRecordData(
                                              lastMessage:
                                                  _model.sentMessageA?.message,
                                              lastMessageDT:
                                                  _model.sentMessageA?.sentDT,
                                            ));
                                            if (!rowForumnsRecord.usersInteract
                                                .contains(
                                                    currentUserReference)) {
                                              logFirebaseEvent(
                                                  'sendingTextField_backend_call');

                                              await widget.forumnRef!.update({
                                                ...mapToFirestore(
                                                  {
                                                    'usersInteract':
                                                        FieldValue.arrayUnion([
                                                      currentUserReference
                                                    ]),
                                                    'userInteractCOUNT':
                                                        FieldValue.increment(1),
                                                  },
                                                ),
                                              });
                                            }

                                            safeSetState(() {});
                                          },
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Type your message...',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          validator: _model
                                              .sendingTextFieldTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderRadius: 12.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.send,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 20.0,
                                    ),
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'FORUMN_CHAT_PAGE_PAGE_send_ICN_ON_TAP');
                                      logFirebaseEvent(
                                          'IconButton_backend_call');

                                      var forumnsChatRecordReference =
                                          ForumnsChatRecord.collection.doc();
                                      await forumnsChatRecordReference
                                          .set(createForumnsChatRecordData(
                                        message: _model
                                            .sendingTextFieldTextController
                                            .text,
                                        sentDT: getCurrentTimestamp,
                                        sender: currentUserReference,
                                        forumnRef: widget.forumnRef,
                                      ));
                                      _model.sentMessageB =
                                          ForumnsChatRecord.getDocumentFromData(
                                              createForumnsChatRecordData(
                                                message: _model
                                                    .sendingTextFieldTextController
                                                    .text,
                                                sentDT: getCurrentTimestamp,
                                                sender: currentUserReference,
                                                forumnRef: widget.forumnRef,
                                              ),
                                              forumnsChatRecordReference);
                                      if (_model.uploadedFileUrl != '') {
                                        logFirebaseEvent(
                                            'IconButton_backend_call');

                                        await _model.sentMessageB!.reference
                                            .update(createForumnsChatRecordData(
                                          image: _model.uploadedFileUrl,
                                        ));
                                      }
                                      logFirebaseEvent(
                                          'IconButton_set_form_field');
                                      safeSetState(() {
                                        _model.sendingTextFieldTextController
                                            ?.text = '';
                                      });
                                      logFirebaseEvent(
                                          'IconButton_backend_call');

                                      await widget.forumnRef!
                                          .update(createForumnsRecordData(
                                        lastMessage:
                                            _model.sentMessageB?.message,
                                        lastMessageDT:
                                            _model.sentMessageB?.sentDT,
                                      ));
                                      if (!rowForumnsRecord.usersInteract
                                          .contains(currentUserReference)) {
                                        logFirebaseEvent(
                                            'IconButton_backend_call');

                                        await widget.forumnRef!.update({
                                          ...mapToFirestore(
                                            {
                                              'usersInteract':
                                                  FieldValue.arrayUnion(
                                                      [currentUserReference]),
                                              'userInteractCOUNT':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
